package httpclient

import (
	"io"
	"net/http"
	"net/url"
	"strings"
)

const (
	userAgent = "Mediagate/v0.0.1"
)

func SetHttpUserAgent(req *http.Request) {
	req.Header.Set("User-Agent", userAgent)
	return
}

type HttpClient struct {
	*http.Client
}

func NewHttpClient() *HttpClient {
	return &HttpClient{
		Client: http.DefaultClient,
	}
}

func (c *HttpClient) Do(req *http.Request) (*http.Response, error) {
	SetHttpUserAgent(req)
	return c.Client.Do(req)
}
func (c *HttpClient) Get(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	SetHttpUserAgent(req)
	return c.Client.Do(req)
}
func (c *HttpClient) Head(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("HEAD", url, nil)
	if err != nil {
		return nil, err
	}
	SetHttpUserAgent(req)
	return c.Client.Do(req)
}
func (c *HttpClient) Post(url string, contentType string, body io.Reader) (resp *http.Response, err error) {
	req, err := http.NewRequest("POST", url, body)
	if err != nil {
		return nil, err
	}
	SetHttpUserAgent(req)

	return c.Client.Do(req)
}
func (c *HttpClient) PostForm(url string, data url.Values) (resp *http.Response, err error) {
	return c.Post(url, "application/x-www-form-urlencoded", strings.NewReader(data.Encode()))
}
