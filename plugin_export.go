package plugin_api

import (
	"errors"
	"runtime/debug"

	"github.com/labulakalia/plugin_api/plugin"
	"github.com/labulakalia/wazero_net/util"
	_ "github.com/labulakalia/wazero_net/wasi/malloc"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/anypb"
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
func plugin_api_schema() uint64 {
	apiSchema, _ := pluginExport.PluginAPISchema()
	return apiSchema
}

//go:wasmexport plugin_id
func plugin_id() (ret uint64) {
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
func get_auth() (ret uint64) {
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
	data, err := proto.Marshal(authType)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(data)), uint32(len(data)))
}

//go:wasmexport check_auth_method
func check_auth_method(authPtr, authLenPtr uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	data := util.PtrToBytes(uint32(authPtr), uint32(authLenPtr))
	anyData := &anypb.Any{}
	err := proto.Unmarshal(data, anyData)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	authData, err := pluginExport.CheckAuthMethod(anyData)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	bytes, err := proto.Marshal(authData)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(bytes)), uint32(len(bytes)))
}

//go:wasmexport check_auth_data
func check_auth_data(raw_auth_dataPtr, raw_auth_dataLen uint64) (ret uint64) {
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
func plugin_auth_id() (ret uint64) {
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
func get_dir_entry(reqPtr, reqLen uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	bytes := util.PtrToBytes(uint32(reqPtr), uint32(reqLen))
	req := &plugin.GetDirEntryRequest{}
	err := proto.Unmarshal(bytes, req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	dirEntry, err := pluginExport.GetDirEntry(req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	dirEntryData, err := proto.Marshal(dirEntry)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(dirEntryData)), uint32(len(dirEntryData)))
}

//go:wasmexport get_file_resource
func get_file_resource(reqPtr, reqLen uint64) (ret uint64) {
	defer func() {
		if r := recover(); r != nil {
			stack := debug.Stack()
			ret = util.ErrorToUint64(errors.New(util.BytesToString(stack)))
		}
	}()
	bytes := util.PtrToBytes(uint32(reqPtr), uint32(reqLen))
	req := &plugin.GetFileResourceRequest{}
	err := proto.Unmarshal(bytes, req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	fileResource, err := pluginExport.GetFileResource(req)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	fileResourceData, err := proto.Marshal(fileResource)
	if err != nil {
		return util.ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(fileResourceData)), uint32(len(fileResourceData)))
}
