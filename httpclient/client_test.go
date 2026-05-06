package httpclient

import (
	"fmt"
	"log/slog"
	"net/http"
	"testing"
)

func TestBuilder(t *testing.T) {
	builder := NewBuilder()
	slog.SetLogLoggerLevel(slog.LevelDebug)
	// slog.Debug("test builder")
	b := builder.Get("https://www.baidu.com").Debug()
	for i := 0; i < 10; i++ {
		respHeader := http.Header{}
		respStatusCode := 0
		_, err := b.SetHeader(fmt.Sprint(i), fmt.Sprint(i)).GetRespHeader(&respHeader).GetRespStatusCode(&respStatusCode).BytesResponse()
		if err != nil {
			t.Fatal(err)
		}
		if len(respHeader) == 0 {
			t.Fatal("can get resp header")
		}
		if respStatusCode == 0 {
			t.Fatal("can get status code")
		}
	}
	_, err := b.CheckRespStatusCode(http.StatusBadRequest).BytesResponse()
	if err != nil {
		t.Error(err)
	}
	_, err = b.CheckRespHeader("test", "data").BytesResponse()
	if err != nil {
		t.Error(err)
	}
}

func TestSetCookie(t *testing.T) {
	builder := NewBuilder().SetClient(http.DefaultClient).
		SetUserAgent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36").
		Get("https://www.baidu.com").Debug()
	header := http.Header{}
	_, err := builder.GetRespHeader(&header).BytesResponse()
	if err != nil {
		t.Fatal(err)
	}
	builder.ParseCookie(header)
	if len(builder.cookies) == 0 {
		t.Fatal("set cookie failed")
	}
	for _, cookie := range builder.cookies {
		fmt.Println("cookie", cookie)
	}

}

func TestSetUrl(t *testing.T) {
	builder := NewBuilder().SetClient(http.DefaultClient).SetBaseURL("https://httpbin.org")
	respData, err := builder.SetMethod(http.MethodGet).SetURI("/get").BytesResponse()
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(string(respData))
	respData, err = builder.SetURI("/user-agent").BytesResponse()
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(string(respData))
	respHeader, err := builder.SetMethod(http.MethodGet).SetURI("/get").HeaderResponse()
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(respHeader)
}
