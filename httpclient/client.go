package httpclient

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log/slog"
	"net/http"
	"net/url"
	"reflect"
	"strings"
	"time"
)

var (
	ErrInvalidPointer  = errors.New("data must be pointer")
	ErrMissUrl         = errors.New("miss set url")
	ErrMissUnmarshaler = errors.New("miss set Unmarshaler")
)

type Unmarshaler interface {
	Unmarshal([]byte, any) error
}

type Builder struct {
	method      string
	url         string
	header      http.Header
	urlParams   url.Values
	body        io.Reader
	timeout     time.Duration
	retry       int
	unmarshaler Unmarshaler
	debug       bool
	cookies     []*http.Cookie
}

func NewBuilder() *Builder {
	return &Builder{
		header:    make(http.Header),
		urlParams: make(url.Values),
		retry:     1,
		timeout:   time.Second * 30,
	}
}

func (rb *Builder) clone() *Builder {
	sp := &Builder{
		method:      rb.method,
		url:         rb.url,
		timeout:     rb.timeout,
		retry:       rb.retry,
		unmarshaler: rb.unmarshaler,
		body:        rb.body,
		debug:       rb.debug,
		cookies:     rb.cookies,
	}
	if rb.urlParams != nil {
		urlParams := url.Values{}
		for k, v := range rb.urlParams {
			urlParams[k] = append(urlParams[k], v...)
		}
		sp.urlParams = urlParams
	}
	if rb.header != nil {
		sp.header = make(map[string][]string)
		for k, v := range rb.header {
			sp.header[k] = append(sp.header[k], v...)
		}
	}
	return sp
}

func (rb *Builder) Request(url string) *Builder {
	nb := rb.clone()
	nb.url = url
	return nb
}

func (rb *Builder) SetMethod(method string) *Builder {
	nb := rb.clone()
	nb.method = method
	return nb
}

func (rb *Builder) Get(url string) *Builder {
	return rb.SetMethod(http.MethodGet).Request(url)
}

func (rb *Builder) Post(url string) *Builder {
	return rb.SetMethod(http.MethodPost).Request(url)
}

func (rb *Builder) Put(url string) *Builder {
	return rb.SetMethod(http.MethodPut).Request(url)
}

func (rb *Builder) Patch(url string) *Builder {
	return rb.SetMethod(http.MethodPatch).Request(url)
}

func (rb *Builder) Delete(url string) *Builder {
	return rb.SetMethod(http.MethodDelete).Request(url)
}

func (rb *Builder) Connect(url string) *Builder {
	return rb.SetMethod(http.MethodConnect).Request(url)
}

func (rb *Builder) Options(url string) *Builder {
	return rb.SetMethod(http.MethodOptions).Request(url)
}

func (rb *Builder) Trace(url string) *Builder {
	return rb.SetMethod(http.MethodTrace).Request(url)
}

func cookieKey(c *http.Cookie) string {
	return fmt.Sprintf("%s%s%s", c.Name, c.Domain, c.Path)
}

func (rb *Builder) GetCookies() []*http.Cookie {
	return rb.cookies
}

func (rb *Builder) SetCookies(cookies []*http.Cookie) {
	rb.cookies = cookies
}

func (rb *Builder) ParseSetCookie(header http.Header) {
	oldCookieMap := map[string]int{}
	for index, oldCookie := range rb.cookies {
		oldCookieMap[cookieKey(oldCookie)] = index
	}
	for _, line := range header["Set-Cookie"] {
		cookie, err := http.ParseSetCookie(line)
		if err != nil {
			continue
		}
		index, ok := oldCookieMap[cookieKey(cookie)]
		if ok {
			rb.cookies[index] = cookie
		} else {
			rb.cookies = append(rb.cookies, cookie)
		}
	}
}

func (rb *Builder) SetHeaders(headers http.Header) *Builder {
	nb := rb.clone()
	for k, v := range headers {
		for _, vv := range v {
			nb.header.Add(k, vv)
		}
	}
	return nb
}

func (rb *Builder) SetHeader(k, v string) *Builder {
	nb := rb.clone()
	nb.header.Add(k, v)
	return nb
}

func (rb *Builder) SetBasicAuth(username, password string) *Builder {
	nb := rb.clone()
	nb.header.Set("Authorization", "Basic "+base64.StdEncoding.EncodeToString([]byte(username+":"+password)))
	return nb
}

func (rb *Builder) SetQueryParam(k, v string) *Builder {
	nb := rb.clone()
	nb.urlParams.Add(k, v)
	return nb
}

func (rb *Builder) SetQueryParams(params url.Values) *Builder {
	nb := rb.clone()
	for k, v := range params {
		for _, vv := range v {
			nb.urlParams.Add(k, vv)
		}
	}
	return nb
}

// Set request body,support
//  1. string
//  2. []byte
//  3. io.Reader
//  4. url.Values
//  5. any as json data
//
// note body not copy
func (rb *Builder) SetBody(body any) *Builder {
	nb := rb.clone()
	switch v := body.(type) {
	case string:
		nb.body = strings.NewReader(v)
	case []byte:
		nb.body = bytes.NewReader(v)
	case io.Reader:
		nb.body = v
	case url.Values:
		nb.body = strings.NewReader(v.Encode())
		nb.header.Set("Content-Type", "application/x-www-form-urlencoded")
	default:
		data, err := json.Marshal(body)
		if err == nil {
			nb.body = bytes.NewReader(data)
		}
		nb.header.Set("Content-Type", "application/json")
	}
	return nb
}

func (rb *Builder) SetTimeout(timeout time.Duration) *Builder {
	nb := rb.clone()
	rb.timeout = timeout
	return nb
}

func (rb *Builder) SetUserAgent(userAgent string) *Builder {
	nb := rb.clone()
	nb.header.Set("User-Agent", userAgent)
	return nb
}

func (rb *Builder) SetRetry(retry int) *Builder {
	nb := rb.clone()
	nb.retry = retry
	return nb
}

func (rb *Builder) SetUnmarshaler(unmarshaler Unmarshaler) *Builder {
	nb := rb.clone()
	nb.unmarshaler = unmarshaler
	return nb
}

func (rb *Builder) Debug() *Builder {
	nb := rb.clone()
	nb.debug = true
	return nb
}

func (rb *Builder) callReq() (*http.Response, error) {
	if rb.url == "" {
		return nil, ErrMissUrl
	}

	if rb.method == "" {
		rb.method = http.MethodGet
	}
	if rb.urlParams != nil {
		rb.url += "?" + rb.urlParams.Encode()
	}
	req, err := http.NewRequest(rb.method, rb.url, rb.body)
	if err != nil {
		return nil, err
	}
	req.Header = rb.header
	for _, cookie := range rb.cookies {
		req.AddCookie(cookie)
	}
	now := time.Now()
	opts := []FuncOption{}
	if rb.retry > 0 {
		opts = append(opts, WithRetry(rb.retry))
	}
	if rb.timeout > 0 {
		opts = append(opts, WithTimeout(rb.timeout))
	}
	client := NewClient(opts...)
	resp, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	if rb.debug {
		args := []any{
			"url", req.URL,
			"method", req.Method,
			"header", req.Header,
			"duration(ms)", time.Since(now).Milliseconds(),
			"status_code", resp.StatusCode,
			"resp_header", resp.Header,
		}

		slog.Debug("client builder request",
			args...,
		)
	}
	return resp, nil
}

func (rb *Builder) RawResponse() (*http.Response, error) {
	resp, err := rb.callReq()
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (rb *Builder) CallBackResponse(callback func([]byte) error) error {
	respBytes, err := rb.BytesResponse()
	if err != nil {
		return err
	}
	err = callback(respBytes)
	return err
}

func (rb *Builder) JSONResponse(data any) error {
	if reflect.TypeOf(data).Kind() != reflect.Pointer {
		return ErrInvalidPointer
	}
	respBytes, err := rb.BytesResponse()
	if err != nil {
		return err
	}
	err = json.Unmarshal(respBytes, data)
	if err != nil {
		return err
	}
	return nil
}

func (rb *Builder) UnmarshalResponse(data any) error {
	if reflect.TypeOf(data).Kind() != reflect.Pointer {
		return ErrInvalidPointer
	}
	respBytes, err := rb.BytesResponse()
	if err != nil {
		return err
	}
	if rb.unmarshaler == nil {
		return ErrMissUnmarshaler
	}
	return rb.unmarshaler.Unmarshal(respBytes, data)
}

func (rb *Builder) WriterResponse(w io.Writer) (int64, error) {
	resp, err := rb.callReq()
	if err != nil {
		return 0, err
	}
	defer resp.Body.Close()
	return io.Copy(w, resp.Body)

}

func (rb *Builder) HeaderResponse() (respHeader http.Header, err error) {
	resp, err := rb.callReq()
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	return resp.Header, nil
}

func (rb *Builder) BytesResponse() ([]byte, error) {
	resp, err := rb.callReq()
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	respBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}
	return respBytes, nil
}
