package ratelimit

import (
	"context"
	"fmt"
	"time"

	"golang.org/x/time/rate"
)

type RateLimit struct {
	uriLimiter map[string]*rate.Limiter
}

// LimitConfig define limit/duration
type LimitConfig struct {
	Limit    int
	Duration time.Duration
}

// multi limit/duration
func New(limitMap map[string]LimitConfig) *RateLimit {
	rateLimit := &RateLimit{
		uriLimiter: map[string]*rate.Limiter{},
	}
	for uri, limit := range limitMap {
		rateLimit.uriLimiter[uri] = rate.NewLimiter(rate.Every(limit.Duration/time.Duration(limit.Limit)), 1)
	}
	return rateLimit
}

func (r *RateLimit) Wait(key string) error {
	l, ok := r.uriLimiter[key]
	if !ok {
		return fmt.Errorf("key %s not limit config", key)
	}
	return l.Wait(context.Background())
}
