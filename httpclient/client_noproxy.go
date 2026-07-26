//go:build !linux && !windows && !darwin

package httpclient

import "net/http"

func setProxy(ts http.RoundTripper) {
	return
}
