package plugin_api

import (
	"log/slog"

	"github.com/labulakalia/plugin_api/plugin"
	"github.com/labulakalia/wazero_net/util"
	_ "github.com/labulakalia/wazero_net/wasi/malloc"
	"google.golang.org/protobuf/proto"
)

var pluginExport IPluginExport

type PluginExport struct {
	IPlugin
}

func (pe *PluginExport) PluginAPISchema() (uint64, error) {
	return pluginAPISchema, nil
}

func (pe *PluginExport) SetSlogLevel(level uint64) {
	slog.SetLogLoggerLevel(slog.Level(level))
}

type IPluginExport interface {
	PluginAPISchema() (uint64, error)
	SetSlogLevel(uint64)
	IPlugin
}

//go:wasmexport set_slog_level
func set_slog_level(l uint64) {
	pluginExport.SetSlogLevel(l)
}

//go:wasmexport plugin_api_schema
func plugin_api_schema() uint64 {
	apiSchema, _ := pluginExport.PluginAPISchema()
	return apiSchema
}

//go:wasmexport plugin_id
func plugin_id() uint64 {
	id, err := pluginExport.PluginId()
	if err != nil {
		return ErrorToUint64(err)
	}
	idPtr := uint32(util.StringToPtr(&id))
	idLen := uint32(len(id))
	return util.Uint32ToUint64(idPtr, idLen)
}

//go:wasmexport get_auth_type
func get_auth_type() uint64 {
	authType, err := pluginExport.GetAuthType()
	if err != nil {
		return ErrorToUint64(err)
	}
	data, err := proto.Marshal(authType)
	if err != nil {
		return ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(data)), uint32(len(data)))
}

//go:wasmexport check_auth_type
func check_auth_type(authTypePtr, authTypeLenPtr uint64) uint64 {
	data := util.PtrToBytes(uint32(authTypePtr), uint32(authTypeLenPtr))
	authType := &plugin.AuthType{}
	err := proto.Unmarshal(data, authType)
	if err != nil {
		slog.Error("unmarshal failed", "err", err)
		return ErrorToUint64(err)
	}
	err = pluginExport.CheckAuthType(authType)
	if err != nil {
		slog.Error("check auth type failed", "err", err)
		return ErrorToUint64(err)
	}
	return 0
}

//go:wasmexport get_auth_data
func get_auth_data() uint64 {
	authData, err := pluginExport.GetAuthData()
	if err != nil {
		return ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(authData)), uint32(len(authData)))
}

//go:wasmexport check_auth_data
func check_auth_data(raw_auth_dataPtr, raw_auth_dataLen uint64) uint64 {
	rawAuthData := util.PtrToBytes(uint32(raw_auth_dataPtr), uint32(raw_auth_dataLen))
	err := pluginExport.CheckAuthData(rawAuthData)
	if err != nil {
		return ErrorToUint64(err)
	}
	return 0
}

//go:wasmexport plugin_auth_id
func plugin_auth_id() uint64 {
	authId, err := pluginExport.PluginAuthId()
	if err != nil {
		return ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.StringToPtr(&authId)), uint32(len(authId)))
}

//go:wasmexport get_dir_entry
func get_dir_entry(dir_pathPtr, dir_pathLen, page, page_size uint64) uint64 {
	dir := util.PtrToString(uint32(dir_pathPtr), uint32(dir_pathLen))
	dirEntry, err := pluginExport.GetDirEntry(dir, page, page_size)
	if err != nil {
		return ErrorToUint64(err)
	}
	dirEntryData, err := proto.Marshal(dirEntry)
	if err != nil {
		return ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(dirEntryData)), uint32(len(dirEntryData)))
}

//go:wasmexport get_file_resource
func get_file_resource(file_pathPtr, file_pathLen uint64) uint64 {
	file_path := util.PtrToString(uint32(file_pathPtr), uint32(file_pathLen))
	fileResource, err := pluginExport.GetFileResource(file_path)
	if err != nil {
		return ErrorToUint64(err)
	}
	fileResourceData, err := proto.Marshal(fileResource)
	if err != nil {
		return ErrorToUint64(err)
	}
	return util.Uint32ToUint64(uint32(util.BytesToPtr(fileResourceData)), uint32(len(fileResourceData)))
}

//go:wasmexport close
func close() uint64 {
	return ErrorToUint64(pluginExport.Close())
}
