package plugin

import (
	"reflect"
	"testing"
)

func TestCheck(t *testing.T) {
	formData := &Auth_FormData{}

	anyData, _ := PackAny(formData)

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
}
