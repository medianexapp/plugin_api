package plugin

import (
	"encoding/json"
	"reflect"
	"testing"
)

func TestCheck(t *testing.T) {
	formData := &Auth_FormData{
		FormItems: []*Auth_FormData_FormItem{
			{
				Name: "xxxx",
			},
		},
	}

	anyData, _ := PackAny(formData)
	res, _ := json.Marshal(anyData)
	t.Log(anyData, string(res))
	if !IsAuthFormData(anyData) {
		t.Fatal("anyData Should be formData")
	}

	callBack := &Auth_Callback{}
	anyData, _ = PackAny(callBack)

	if !IsAuthCallback(anyData) {
		t.Fatal("anyData Should be callBack")
	}

	scanQrcode := &Auth_ScanQrcode{}
	anyData, _ = PackAny(scanQrcode)

	if !IsAuthScanQrcode(anyData) {
		t.Fatal("anyData Should be scanQrcode")
	}
}

func TestProto(t *testing.T) {
	formData := &Token{
		TokenType: "wang",
	}

	res, err := formData.MarshalVT()
	if err != nil {
		t.Fatal(err)
	}
	checkRes := []byte{10, 4, 119, 97, 110, 103}
	t.Log(reflect.DeepEqual(res, checkRes))
	testDDD := &Auth_FormData{}
	t.Log(getTypeUrl(testDDD))
}
