package plugin_api

import "github.com/labulakalia/wazero_net/util"

//go:wasmimport plugin update_plugin_auth
//go:noescape
func update_plugin_auth_data(reqPtr, reqLen uint64) uint64

func UpdatePluginAuthData(data []byte) error {
	dataPtr := util.BytesToPtr(data)
	return util.RetUint64ToError(update_plugin_auth_data(dataPtr, uint64(len(data))))
}
