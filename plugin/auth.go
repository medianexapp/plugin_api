package plugin

import "google.golang.org/protobuf/types/known/anypb"

func IsAuthFormData(authMethod *anypb.Any) bool {
	return authMethod.MessageIs(&Auth_FormData{})
}

func IsAuthCallback(authMethod *anypb.Any) bool {
	return authMethod.MessageIs(&Auth_Callback{})
}

func IsAuthScanQrcode(authMethod *anypb.Any) bool {
	return authMethod.MessageIs(&Auth_ScanQrcode{})
}

func IsAuthRefresh(authMethod *anypb.Any) bool {
	return authMethod.MessageIs(&AuthRefresh{})
}
