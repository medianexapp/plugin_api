package plugin

import (
	"encoding/json"
	"reflect"
	"testing"
)

func TestCheck(t *testing.T) {
	formData := &AuthMethod_FormData{
		FormItems: []*AuthMethod_FormData_FormItem{
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

	callBack := &AuthMethod_Callback{}
	anyData, _ = PackAny(callBack)

	if !IsAuthCallback(anyData) {
		t.Fatal("anyData Should be callBack")
	}

	scanQrcode := &AuthMethod_ScanQrcode{}
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
	// testDDD := &Auth_FormData{}
	// t.Log(getTypeUrl(testDDD))
}

func TestAuthMethod(t *testing.T) {
	auths := Auth{
		AuthMethods: []*AuthMethod{
			&AuthMethod{
				Method: &AuthMethod_CallBack{
					CallBack: &AuthMethod_Callback{
						CallbackUrl: "test url",
					},
				},
			},
		},
	}
	t.Log(auths.AuthMethods[0].Method)
}
