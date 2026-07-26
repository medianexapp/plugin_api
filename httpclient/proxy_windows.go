//go:build windows

package httpclient

import (
	"strings"

	"golang.org/x/sys/windows/registry"

	"golang.org/x/net/http/httpproxy"
)

func getSystemProxy() *httpproxy.Config {
	return nil
}

type SystemProxy struct {
	Enabled    bool
	HTTPProxy  string
	HTTPSProxy string
	NoProxy    string
}

func GetWindowsProxy() (*httpproxy.Config, error) {
	key, err := registry.OpenKey(registry.CURRENT_USER, `Software\Microsoft\Windows\CurrentVersion\Internet Settings`, registry.QUERY_VALUE)
	if err != nil {
		return nil, err
	}
	defer key.Close()

	enable, _, err := key.GetIntegerValue("ProxyEnable")
	if err != nil || enable == 0 {
		return &httpproxy.Config{}, err
	}

	server, _, err := key.GetStringValue("ProxyServer")
	if err != nil {
		return nil, err
	}

	override, _, _ := key.GetStringValue("ProxyOverride")

	proxy := &httpproxy.Config{
		NoProxy: override,
	}

	// 格式解析：可能是 "http=127.0.0.1:8080;https=127.0.0.1:8443" 或 "127.0.0.1:7890"
	if strings.Contains(server, "=") {
		parts := strings.Split(server, ";")
		for _, part := range parts {
			kv := strings.Split(part, "=")
			if len(kv) == 2 {
				switch strings.ToLower(kv[0]) {
				case "http":
					proxy.HTTPProxy = kv[1]
				case "https":
					proxy.HTTPSProxy = kv[1]
				}
			}
		}
	} else {
		proxy.HTTPProxy = server
		proxy.HTTPSProxy = server
	}
	return proxy, nil
}
