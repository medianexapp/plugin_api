//go:build linux || windows || darwin

package httpclient

import (
	"fmt"
	"net/http"
	"net/url"
)

func setProxy(rt http.RoundTripper) {
	httpProxyConfig := getSystemProxy()
	if httpProxyConfig == nil {
		return
	}
	ts, ok := rt.(*http.Transport)
	if ok {
		fmt.Println(ok)
		ts.Proxy = func(r *http.Request) (*url.URL, error) {
			return httpProxyConfig.ProxyFunc()(r.URL)
		}
	}
}
