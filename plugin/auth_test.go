package plugin

import (
	"testing"

	"google.golang.org/protobuf/types/known/anypb"
)

func TestAuthCheck(t *testing.T) {
	formData := &Auth_FormData{}
	anyData, _ := anypb.New(formData)

	if !IsAuthFormData(anyData) {
		t.Fatal("anyData Should be formData")
	}

	callBack := &Auth_Callback{}
	anyData, _ = anypb.New(callBack)

	if !IsAuthCallback(anyData) {
		t.Fatal("anyData Should be callBack")
	}

	scanQrcode := &Auth_ScanQrcode{}
	anyData, _ = anypb.New(scanQrcode)

	if !IsAuthScanQrcode(anyData) {
		t.Fatal("anyData Should be scanQrcode")
	}
}
