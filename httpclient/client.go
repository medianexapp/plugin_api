package httpclient

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log/slog"
	"maps"
	"net/http"
	"net/url"
	"reflect"
	"slices"
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
	baseURL     string
	uri         string
	header      http.Header
	urlParams   url.Values
	body        io.Reader
	timeout     time.Duration
	retry       int
	unmarshaler Unmarshaler
	debug       bool
	cookies     []*http.Cookie

	// http resp status must be equal value
	execptStatusCode []int
	// http resp header must exist this header
	exceptRespHeader map[string]string

	respHeader     *http.Header
	respStatusCode *int

	httpRequest *http.Request

	client *http.Client

	authProxy bool
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
		baseURL:     rb.baseURL,
		uri:         rb.uri,
		timeout:     rb.timeout,
		retry:       rb.retry,
		unmarshaler: rb.unmarshaler,
		body:        rb.body,
		debug:       rb.debug,
		cookies:     rb.cookies,

		execptStatusCode: rb.execptStatusCode,

		respHeader:     rb.respHeader,
		respStatusCode: rb.respStatusCode,
		client:         rb.client,

		httpRequest: rb.httpRequest,

		authProxy: rb.authProxy,
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

func (rb *Builder) SetURL(url string) *Builder {
	nb := rb.clone()
	nb.url = url
	nb.baseURL = ""
	nb.uri = ""
	return nb
}

// SetBaseURL sets the base URL for the request. Calling this method will clear
// any full URL previously set by Request(). Use together with SetURI() to
// construct the full request URL from baseURL + uri.
func (rb *Builder) SetBaseURL(baseURL string) *Builder {
	nb := rb.clone()
	nb.baseURL = baseURL
	nb.url = ""
	return nb
}

// SetURI sets the URI path for the request. Calling this method will clear
// any full URL previously set by Request(). Use together with SetBaseURL() to
// construct the full request URL from baseURL + uri.
func (rb *Builder) SetURI(uri string) *Builder {
	nb := rb.clone()
	nb.uri = uri
	nb.url = ""
	return nb
}

func (rb *Builder) SetMethod(method string) *Builder {
	nb := rb.clone()
	nb.method = method
	return nb
}

func (rb *Builder) Get(url string) *Builder {
	return rb.SetMethod(http.MethodGet).SetURL(url)
}

func (rb *Builder) Post(url string) *Builder {
	return rb.SetMethod(http.MethodPost).SetURL(url)
}

func (rb *Builder) Put(url string) *Builder {
	return rb.SetMethod(http.MethodPut).SetURL(url)
}

func (rb *Builder) Patch(url string) *Builder {
	return rb.SetMethod(http.MethodPatch).SetURL(url)
}

func (rb *Builder) Delete(url string) *Builder {
	return rb.SetMethod(http.MethodDelete).SetURL(url)
}

func (rb *Builder) Connect(url string) *Builder {
	return rb.SetMethod(http.MethodConnect).SetURL(url)
}

func (rb *Builder) Options(url string) *Builder {
	return rb.SetMethod(http.MethodOptions).SetURL(url)
}

func (rb *Builder) Trace(url string) *Builder {
	return rb.SetMethod(http.MethodTrace).SetURL(url)
}

func cookieKey(c *http.Cookie) string {
	return fmt.Sprintf("%s%s%s", c.Name, c.Domain, c.Path)
}

func (rb *Builder) GetCookies() []*http.Cookie {
	return rb.cookies
}

func (rb *Builder) SetCookies(cookies []*http.Cookie) *Builder {
	rbb := rb.clone()
	rbb.cookies = cookies
	return rbb
}

func (rb *Builder) ParseCookie(header http.Header) {
	resp := &http.Response{
		Header: header,
	}
	oldCookieMap := map[string]int{}
	for index, oldCookie := range rb.cookies {
		oldCookieMap[cookieKey(oldCookie)] = index
	}
	newCookies := resp.Cookies()
	for _, cookie := range newCookies {
		index, ok := oldCookieMap[cookieKey(cookie)]
		if ok {
			rb.cookies[index] = cookie
		} else {
			rb.cookies = append(rb.cookies, cookie)
		}
	}
}

func (rb *Builder) SetRequest(httpReq *http.Request) *Builder {
	nb := rb.clone()
	nb.httpRequest = httpReq
	return nb
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

func (rb *Builder) SetClient(client *http.Client) *Builder {
	nb := rb.clone()
	nb.client = client
	return nb
}

func (rb *Builder) CheckRespStatusCode(code int) *Builder {
	rbb := rb.clone()
	rbb.execptStatusCode = append(rbb.execptStatusCode, code)
	return rbb
}

func (rb *Builder) CheckRespHeader(k, v string) *Builder {
	rbb := rb.clone()
	if rbb.exceptRespHeader == nil {
		rbb.exceptRespHeader = make(map[string]string)
	}
	rbb.exceptRespHeader[k] = v
	return rbb
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

func (rb *Builder) AutoProxy() *Builder {
	nb := rb.clone()
	nb.authProxy = true
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
	httpRequest := rb.httpRequest
	if httpRequest == nil {
		if rb.url == "" {
			if rb.baseURL != "" {
				rb.url = rb.baseURL
				if rb.uri != "" {
					rb.url = strings.TrimRight(rb.baseURL, "/") + "/" + strings.TrimLeft(rb.uri, "/")
				}
			} else {
				return nil, ErrMissUrl
			}
		}
		if rb.method == "" {
			rb.method = http.MethodGet
		}
		if rb.urlParams.Encode() != "" {
			rb.url += "?" + rb.urlParams.Encode()
		}
		req, err := http.NewRequest(rb.method, rb.url, rb.body)
		if err != nil {
			return nil, err
		}
		httpRequest = req
	}
	if len(rb.header) > 0 {
		for k, v := range rb.header {
			for _, item := range v {
				httpRequest.Header.Add(k, item)
			}
		}
	}

	for _, cookie := range rb.cookies {
		httpRequest.AddCookie(cookie)
	}
	now := time.Now()
	opts := []FuncOption{}
	if rb.retry > 0 {
		opts = append(opts, WithRetry(rb.retry))
	}
	if rb.timeout > 0 {
		opts = append(opts, WithTimeout(rb.timeout))
	}
	if rb.client == nil {
		rb.client = &http.Client{
			Transport: &http.Transport{},
		}
	}
	if rb.authProxy {
		setProxy(rb.client.Transport)
	}
	opts = append(opts, WithClient(rb.client))
	client := NewClient(opts...)
	resp, err := client.Do(httpRequest)
	if err != nil {
		return nil, err
	}
	if rb.debug {
		args := []any{
			"url", httpRequest.URL,
			"method", httpRequest.Method,
			"header", httpRequest.Header,
			"duration(ms)", time.Since(now).Milliseconds(),
			"status_code", resp.StatusCode,
			"resp_header", resp.Header,
		}
		slog.Debug("client builder request",
			args...,
		)
	}

	if len(rb.execptStatusCode) > 0 {
		if !slices.Contains(rb.execptStatusCode, resp.StatusCode) {
			return nil, fmt.Errorf("expect status code %+v not found,got status code %d", rb.execptStatusCode, resp.StatusCode)
		}
	}

	if len(rb.exceptRespHeader) > 0 {
		keys := map[string]bool{}
		for name := range resp.Header {
			keys[name] = true
		}

		for k, v := range rb.exceptRespHeader {
			if resp.Header.Get(k) != v {
				return nil, fmt.Errorf("expect header %s:%s not found", k, v)
			}
		}
	}
	if rb.respHeader != nil {
		maps.Copy((*rb.respHeader), resp.Header)
	}
	if rb.respStatusCode != nil {
		*rb.respStatusCode = resp.StatusCode
	}

	return resp, nil
}

func (rb *Builder) GetRespHeader(h *http.Header) *Builder {
	rb = rb.clone()
	rb.respHeader = h
	return rb
}

func (rb *Builder) GetRespStatusCode(statusCode *int) *Builder {
	rb = rb.clone()
	rb.respStatusCode = statusCode
	return rb
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
