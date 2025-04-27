package httpclient

import (
	"io"
	"net/http"
	"net/url"
	"strings"
)

const (
	defaultUserAgent = "Medianex/plugin_api"
)

func GetUserAgent() string {
	return defaultUserAgent
}

func (c *Client) setUserAgent(req *http.Request) {
	req.Header.Set("User-Agent", defaultUserAgent)
	return
}

type Client struct {
	*http.Client
}

type Option struct {
	UserAgent string
}

type FuncOption func(*Option)

func WithUserAgent(userAgent string) FuncOption {
	return func(o *Option) {
		o.UserAgent = userAgent
	}
}

func NewClient(opts ...FuncOption) *Client {
	option := &Option{
		UserAgent: defaultUserAgent,
	}
	for _, opt := range opts {
		opt(option)
	}
	return &Client{
		Client: http.DefaultClient,
	}
}

func (c *Client) Do(req *http.Request) (*http.Response, error) {
	c.setUserAgent(req)
	return c.Client.Do(req)
}
func (c *Client) Get(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	c.setUserAgent(req)
	return c.Client.Do(req)
}
func (c *Client) Head(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("HEAD", url, nil)
	if err != nil {
		return nil, err
	}
	c.setUserAgent(req)
	return c.Client.Do(req)
}
func (c *Client) Post(url string, contentType string, body io.Reader) (resp *http.Response, err error) {
	req, err := http.NewRequest("POST", url, body)
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", contentType)
	c.setUserAgent(req)

	return c.Client.Do(req)
}
func (c *Client) PostForm(url string, data url.Values) (resp *http.Response, err error) {
	return c.Post(url, "application/x-www-form-urlencoded", strings.NewReader(data.Encode()))
}
