package httpclient

import (
	"encoding/json"
	"io"
	"testing"
)

func TestHttp(t *testing.T) {
	client := NewClient()
	response, err := client.Get("https://httpbin.io/user-agent")
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
