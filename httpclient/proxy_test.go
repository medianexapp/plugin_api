package httpclient

import (
	"fmt"
	"log/slog"
	"regexp"
	"strings"
	"testing"

	"golang.org/x/net/http/httpproxy"
)

func TestGetProxy(t *testing.T) {
	t.Logf("proxyres: %+v", GetProxy())
	re1 := regexp.MustCompile(`^\d`)
	fmt.Println(re1.MatchString("12345")) // true
	fmt.Println(re1.MatchString("12a3"))  // false      // false
}

func TestDarwin(t *testing.T) {
	res := `<dictionary> {
  ExceptionsList : <array> {
    0 : 127.0.0.1
    1 : 192.168.0.0/16
    2 : 10.0.0.0/8
    3 : 172.16.0.0/12
    4 : localhost
    5 : *.local
    6 : *.crashlytics.com
    7 : <local>
  }
  FTPPassive : 1
  HTTPEnable : 1
  HTTPPort : 7897
  HTTPProxy : 127.0.0.1
  HTTPSEnable : 1
  HTTPSPort : 7897
  HTTPSProxy : 127.0.0.1
  ProxyAutoConfigEnable : 0
  SOCKSEnable : 1
  SOCKSPort : 7897
  SOCKSProxy : 127.0.0.1
}`
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
	t.Logf("config %+v", config)

}

func TestProxyHttp(t *testing.T) {
	slog.SetLogLoggerLevel(slog.LevelDebug)
	data, err := NewBuilder().Get("http://www.google.com").Debug().AutoProxy().BytesResponse()
	if err != nil {
		t.Fatal(err)
	}
	t.Log(string(data))
}
