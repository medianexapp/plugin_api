//go:build !linux && !windows && !darwin

package httpclient

import "golang.org/x/net/http/httpproxy"

func getSystemProxy() *httpproxy.Config {
	return nil
}
