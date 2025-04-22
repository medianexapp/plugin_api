package plugin

import (
	"reflect"
	"testing"
)

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
				Method: &AuthMethod_Callback{
					Callback: &Callback{},
				},
			},
		},
	}
	_, ok := auths.AuthMethods[0].Method.(*AuthMethod_Formdata)
	t.Log(ok)
	_, ok = auths.AuthMethods[0].Method.(*AuthMethod_Scanqrcode)
	t.Log(ok)
	_, ok = auths.AuthMethods[0].Method.(*AuthMethod_Refresh)
	t.Log(ok)
	_, ok = auths.AuthMethods[0].Method.(*AuthMethod_Callback)
	t.Log(ok)
}
