//go:build wasip1

package plugin_api

//go:wasmimport plugin update_auth_data
//go:noescape
func UpdateAuthData(driverId, respPtr, respLen uint64) uint64
