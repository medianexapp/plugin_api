package httpclient

import (
	"os"
	"strings"

	"golang.org/x/net/http/httpproxy"
)

func GetProxy() *httpproxy.Config {
	config := getSystemProxy()
	httpProxy := os.Getenv("HTTP_PROXY")
	if httpProxy == "" {
		httpProxy = os.Getenv(strings.ToLower("HTTP_PROXY"))
		if httpProxy != "" {
			config.HTTPProxy = httpProxy
		}
	}
	httpsProxy := os.Getenv("HTTPS_PROXY")
	if httpsProxy == "" {
		httpsProxy = os.Getenv(strings.ToLower("HTTPS_PROXY"))
		if httpsProxy != "" {
			config.HTTPSProxy = httpProxy
		}
	}
	noProxy := os.Getenv("NO_PROXY")
	if noProxy == "" {
		noProxy = os.Getenv(strings.ToLower("NO_PROXY"))
		if noProxy != "" {
			config.NoProxy = noProxy
		}
	}
	return config
}
