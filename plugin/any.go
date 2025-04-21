package plugin

import (
	"reflect"

	protobuf_go_lite "github.com/aperturerobotics/protobuf-go-lite"
	anypb "github.com/aperturerobotics/protobuf-go-lite/types/known/anypb"
)

const preUrl = "type.googleapis.com/"

func getTypeUrl(src protobuf_go_lite.Message) string {
	t := reflect.TypeOf(src)
	if t.Kind() == reflect.Ptr {
		t = t.Elem()
	}
	return preUrl + t.String()
}

func PackAny(src protobuf_go_lite.Message) (*anypb.Any, error) {
	return anypb.New(src, getTypeUrl(src))
}

func UnpackAny(any *anypb.Any, dst protobuf_go_lite.Message) error {
	return any.UnmarshalTo(dst, getTypeUrl(dst))
}
