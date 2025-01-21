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
	formData.Data, _ = anypb.New(int32Value)
	fmt.Println("formData", formData.Data)

	fmt.Println(formData.Data.GetTypeUrl())
	msg, _ := anypb.UnmarshalNew(formData.Data, proto.UnmarshalOptions{})
	fmt.Println(msg.(*wrapperspb.Int32Value).Value)
}
