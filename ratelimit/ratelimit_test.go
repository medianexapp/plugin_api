package ratelimit

import (
	"testing"
	"time"
)

func TestRateLimit(t *testing.T) {
	l := New(map[string]LimitConfig{
		"/adrive/v1.0/openFile/list": {
			Limit:    1,
			Duration: time.Second,
		},
	})
	start := time.Now()
	for range 3 {
		_ = l.Wait("/adrive/v1.0/openFile/list")
		t.Log(time.Now(), "wait success")
	}
	tt := time.Now().Unix() - start.Unix()
	if tt != 2 {
		t.Error("use time not equal 2", tt)
	}
}
