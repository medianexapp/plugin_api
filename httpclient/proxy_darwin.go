//go:build darwin

package httpclient

import (
	"fmt"
	"regexp"
	"strings"

	"golang.org/x/net/http/httpproxy"
)

func getSystemProxy() *httpproxy.Config {
	res, err := runCmd("scutil --proxy")
	if err != nil {
		return nil
	}

	noProxys := []string{}
	var (
		httpEnable  string
		httpHost    string
		httpPort    string
		httpsEnable string
		httpsHost   string
		httpsPort   string
	)
	for _, sp := range strings.Split(res, "\n") {
		sp = strings.TrimSpace(sp)
		fields := strings.Fields(sp)
		if len(fields) != 3 {
			continue
		}
		if regexp.MustCompile(`^\d`).MatchString(sp) {
			noProxys = append(noProxys, fields[2])
		}
		if strings.HasPrefix(sp, "HTTPEnable") {
			httpEnable = fields[2]
		}
		if strings.HasPrefix(sp, "HTTPPort") {
			httpPort = fields[2]
		}
		if strings.HasPrefix(sp, "HTTPProxy") {
			httpHost = fields[2]
		}
		if strings.HasPrefix(sp, "HTTPSEnable") {
			httpsEnable = fields[2]
		}
		if strings.HasPrefix(sp, "HTTPSPort") {
			httpsPort = fields[2]
		}
		if strings.HasPrefix(sp, "HTTPSProxy") {
			httpsHost = fields[2]
		}
	}
	config := httpproxy.Config{}
	if httpEnable == "1" && httpHost != "" && httpPort != "" {
		config.HTTPProxy = fmt.Sprintf("http://%s:%s", httpHost, httpPort)
	}
	if httpsEnable == "1" && httpsHost != "" && httpsPort != "" {
		config.HTTPSProxy = fmt.Sprintf("https://%s:%s", httpsHost, httpsPort)
	}
	if len(noProxys) > 0 {
		config.NoProxy = strings.Join(noProxys, ",")
	}
	return &config
}
