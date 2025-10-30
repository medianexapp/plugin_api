package httpclient

import (
	"encoding/json"
	"io"
	"log/slog"
	"testing"
	"time"
)

func TestHttp(t *testing.T) {
	client := NewClient(WithTimeout(time.Second * 3))
	response, err := client.Get("http://127.0.0.1:19971")
	if err != nil {
		t.Fatal(err)
	}
	defer response.Body.Close()

	// read the response body
	body, err := io.ReadAll(response.Body)
	if err != nil {
		t.Fatal(err)
	}
	respData := map[string]string{}
	err = json.Unmarshal(body, &respData)
	if err != nil {
		t.Fatal(err)
	}
	if respData["user-agent"] != defaultUserAgent {
		t.Fatal("user agent not equal actual", string(body), "expected", defaultUserAgent)
	}
}

func TestBuilder(t *testing.T) {
	builder := NewBuilder()
	slog.SetLogLoggerLevel(slog.LevelDebug)
	// slog.Debug("test builder")
	data, err := builder.Get("https://www.baidu.com").Debug().
		SetQueryParam("a", "b").
		SetBasicAuth("auth", "passwd").
		SetUserAgent("testagebt").
		BytesResponse()
	if err != nil {
		t.Fatal(err)
	}
	t.Log(len(data))
}
