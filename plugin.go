package plugin_api

import (
	"log/slog"

	"github.com/medianexapp/plugin_api/plugin"
)

type IPlugin interface {
	PluginType() (plugin.PluginType, error)
	// plugin id
	PluginId() (pluginId string, err error)
	// get auth like form edit,qrcode,oauth2
	GetAuth() (auth *plugin.Auth, err error)
	// check auth method
	// return :
	//  	1.auth data
	// if use form auth,only need marshal auth data to []byte
	// if use qrcode auth, CheckAuthType will check qrcode is scanned,
	//		if not scanned,will return AuthNone and recall after
	// 		if scanned is failed,will return AuthFailed
	// 		id scanned is successed,need return auth data
	// if use oauth auth,CheckAuthType will call by oauth2 callback code,then need return auth data by code
	// if authMethod Type is RefreshToken, this is func need refresh token
	CheckAuthMethod(authMethod *plugin.AuthMethod) (authData *plugin.AuthData, err error)
	// check auth is success by raw auth data
	//  if authData is error, will return error,then need auth again
	CheckAuthData(authDataBytes []byte) (err error)
	// plugin auth id,it need unqiue for same driver
	PluginAuthId() (pluginAuthId string, err error)
	// get dir entry from driver plugin
	GetDirEntry(req *plugin.GetDirEntryRequest) (dirEntry *plugin.DirEntry, err error)
	// get file entry resource from driver plugin
	GetFileResource(req *plugin.GetFileResourceRequest) (fileResource *plugin.FileResource, err error)

	// support filter by multi column
	GetMediaMenu() (*plugin.MediaMenu, error)
	// get page filter items
	GetFilterItems(subItem *plugin.Item) (*plugin.FilterItems, error)
	// list media item info
	ListMediaItem(req *plugin.ListMediaItemRequest) (*plugin.ListMediaItemResponse, error)
	// get media item info by id
	GetMediaItem(req *plugin.GetMediaItemRequest) (*plugin.GetMediaItemResponse, error)
}

func RegistryPlugin(iPlugin IPlugin) {
	if pluginExport != nil {
		panic("plugin already registered")
	}
	pluginExport = &PluginExport{
		IPlugin: iPlugin,
	}
	pluginId, _ := iPlugin.PluginId()
	slog.SetDefault(slog.Default().With("pluginId", pluginId))
}
