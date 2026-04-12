package httpclient

import (
	"encoding/json"
	"fmt"
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
	b := builder.Get("https://www.baidu.com").Debug()
	for i := 0; i < 10; i++ {
		_, err := b.SetHeader(fmt.Sprint(i), fmt.Sprint(i)).BytesResponse()
		if err != nil {
			t.Fatal(err)
		}
	}

}

func TestSetCookie(t *testing.T) {
	builder := NewBuilder().
		SetUserAgent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36").
		Get("https://www.baidu.com").Debug()
	h, err := builder.HeaderResponse()
	if err != nil {
		t.Fatal(err)
	}
	builder.ParseSetCookie(h)
	if len(builder.cookies) == 0 {
		t.Fatal("set cookie failed")
	}
	for _, cookie := range builder.cookies {
		fmt.Println("cookie", cookie)
	}
	h, err = builder.HeaderResponse()
	if err != nil {
		t.Fatal(err)
	}
	builder.ParseSetCookie(h)
	if len(builder.cookies) == 0 {
		t.Fatal("set cookie failed")
	}
	for _, cookie := range builder.cookies {
		fmt.Println("cookie", cookie)
	}

}
