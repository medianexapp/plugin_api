package plugin

import (
	"fmt"
	"testing"

	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

func TestPLugin(t *testing.T) {
	formData := &AuthType_FormData{}
	int32Value := wrapperspb.Int32(1111)
	formData.Value, _ = anypb.New(int32Value)
	fmt.Println("formData", formData.Value)

	fmt.Println(formData.Value.GetTypeUrl())
	msg, _ := anypb.UnmarshalNew(formData.Value, proto.UnmarshalOptions{})
	fmt.Println(msg.(*wrapperspb.Int32Value).Value)
	newint32V := wrapperspb.Int32(0)
	anypb.UnmarshalTo(formData.Value, newint32V, proto.UnmarshalOptions{})
	t.Log(newint32V)
}
