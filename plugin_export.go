package plugin_api

import (
	"errors"
	"runtime/debug"

	"github.com/labulakalia/plugin_api/plugin"
	"github.com/labulakalia/wazero_net/util"
)

var pluginExport IPluginExport

type PluginExport struct {
	IPlugin
}

func (pe *PluginExport) PluginAPISchema() (uint64, error) {
	return pluginAPISchema, nil
}

type IPluginExport interface {
	PluginAPISchema() (uint64, error)
	IPlugin
}

//go:wasmexport plugin_api_schema
func _plugin_api_schema() uint64 {
	apiSchema, _ := pluginExport.PluginAPISchema()
	return apiSchema
}

//go:wasmexport plugin_id
func _plugin_id() (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	id, err := pluginExport.PluginId()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	idPtr := uint32(util.StringToPtr(&id))
	idLen := uint32(len(id))
	return util.Uint32ToUint64(idPtr, idLen)
}

//go:wasmexport get_auth
func _get_auth() (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	authType, err := pluginExport.GetAuth()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	data, err := authType.MarshalVT()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(data)), uint32(len(data)))
}

//go:wasmexport check_auth_method
func _check_auth_method(authPtr, authLenPtr uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	data := util.PtrToBytes(uint32(authPtr), uint32(authLenPtr))
	// anyData := &anypb.Any{}
	// err := anyData.UnmarshalVT(data)

	authMethod := &plugin.AuthMethod{}
	err := authMethod.UnmarshalVT(data)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	authData, err := pluginExport.CheckAuthMethod(authMethod)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	bytes, err := authData.MarshalVT()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(bytes)), uint32(len(bytes)))
}

//go:wasmexport check_auth_data
func _check_auth_data(raw_auth_dataPtr, raw_auth_dataLen uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	rawAuthData := util.PtrToBytes(uint32(raw_auth_dataPtr), uint32(raw_auth_dataLen))
	err := pluginExport.CheckAuthData(rawAuthData)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return 0
}

//go:wasmexport plugin_auth_id
func _plugin_auth_id() (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	authId, err := pluginExport.PluginAuthId()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.StringToPtr(&authId)), uint32(len(authId)))
}

//go:wasmexport get_dir_entry
func _get_dir_entry(reqPtr, reqLen uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	bytes := util.PtrToBytes(uint32(reqPtr), uint32(reqLen))
	req := &plugin.GetDirEntryRequest{}
	err := req.UnmarshalVT(bytes)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	dirEntry, err := pluginExport.GetDirEntry(req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	dirEntryData, err := dirEntry.MarshalVT()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(dirEntryData)), uint32(len(dirEntryData)))
}

//go:wasmexport get_file_resource
func _get_file_resource(reqPtr, reqLen uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	bytes := util.PtrToBytes(uint32(reqPtr), uint32(reqLen))
	req := &plugin.GetFileResourceRequest{}
	err := req.UnmarshalVT(bytes)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	fileResource, err := pluginExport.GetFileResource(req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	fileResourceData, err := fileResource.MarshalVT()
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(fileResourceData)), uint32(len(fileResourceData)))
}
