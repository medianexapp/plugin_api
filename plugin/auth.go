package plugin

import (
	anypb "github.com/aperturerobotics/protobuf-go-lite/types/known/anypb"
)

func IsAuthFormData(authMethod *anypb.Any) bool {
	return true
	// return authMethod.MessageIs(getTypeUrl(&Auth_FormData{}))
}

func IsAuthCallback(authMethod *anypb.Any) bool {
	return true
	// return authMethod.MessageIs(getTypeUrl(&Auth_Callback{}))
}

func IsAuthScanQrcode(authMethod *anypb.Any) bool {
	return true
	// return authMethod.MessageIs(getTypeUrl(&Auth_ScanQrcode{}))
}

func IsAuthRefresh(authMethod *anypb.Any) bool {
	return true
	// return authMethod.MessageIs(getTypeUrl(&AuthRefresh{}))
}
