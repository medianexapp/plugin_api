package httpclient

import (
	"io"
	"log/slog"
	"net/http"
	"net/url"
	"strings"
)

const (
	defaultUserAgent = "Medianex/plugin_api"
)

func GetDefaultUserAgent() string {
	return defaultUserAgent
}

func (c *Client) setUserAgent(req *http.Request) {
	if req.Header.Get("User-Agent") == "" {
		req.Header.Set("User-Agent", c.option.userAgent)
	}

	return
}

type Client struct {
	client *http.Client
	option *Option
}

type Option struct {
	userAgent string
	retry     int
}

type FuncOption func(*Option)

func WithUserAgent(userAgent string) FuncOption {
	return func(o *Option) {
		o.userAgent = userAgent
	}
}

func WithRetry(retry int) FuncOption {
	return func(o *Option) {
		o.retry = retry
	}
}

func NewClient(opts ...FuncOption) *Client {
	option := &Option{
		userAgent: defaultUserAgent,
		retry:     3,
	}
	for _, opt := range opts {
		opt(option)
	}
	return &Client{
		client: http.DefaultClient,
		option: option,
	}
}

func (c *Client) Do(req *http.Request) (resp *http.Response, err error) {
	c.setUserAgent(req)
	for range c.option.retry {
		resp, err = c.client.Do(req)
		if err != nil {
			slog.Error("client do failed", "err", err)
			continue
		}
		break
	}
	if err != nil {
		return nil, err
	}
	return
}
func (c *Client) Get(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	c.setUserAgent(req)
	return c.Do(req)
}
func (c *Client) Head(url string) (resp *http.Response, err error) {
	req, err := http.NewRequest("HEAD", url, nil)
	if err != nil {
		return nil, err
	}
	c.setUserAgent(req)
	return c.Do(req)
}
func (c *Client) Post(url string, contentType string, body io.Reader) (resp *http.Response, err error) {
	req, err := http.NewRequest("POST", url, body)
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", contentType)
	c.setUserAgent(req)

	return c.Do(req)
}
func (c *Client) PostForm(url string, data url.Values) (resp *http.Response, err error) {
	return c.Post(url, "application/x-www-form-urlencoded", strings.NewReader(data.Encode()))
}
