package plugin_api

import (
	"log/slog"
	"os"

	"github.com/labulakalia/plugin_api/plugin"
	"google.golang.org/protobuf/types/known/anypb"
)

type IPlugin interface {
	// plugin id
	PluginId() (pluginId string, err error)
	// get auth like form edit,qrcode,oauth2
	GetAuth() (auth *plugin.Auth, err error)
	// check auth type
	// if use form auth,only need marshal auth data to []byte
	// if use qrcode auth, CheckAuthType will check qrcode is scanned,
	//		if not scanned,will return AuthNone and recall after
	// 		if scanned is failed,will return AuthFailed
	// 		id scanned is successed,need return auth data
	// if use oauth auth,CheckAuthType will call by oauth2 callback code,then need return auth data by code
	CheckAuth(authMethod *anypb.Any) (authData []byte, err error)
	// check auth is success by raw auth data
	//  if authData is error, will return error,will return error,then need auth again
	CheckAuthData(authData []byte) (err error)
	// plugin auth id,it need unqiue for same driver
	PluginAuthId() (pluginAuthId string, err error)
	// get dir entry from driver plugin
	GetDirEntry(dir_path string, page, page_size uint64) (dirEntry *plugin.DirEntry, err error)
	// get file entry resource from driver plugin
	GetFileResource(file_path string) (fileResource *plugin.FileResource, err error)
}

func RegistryPlugin(iPlugin IPlugin) {
	if pluginExport != nil {
		panic("plugin already registered")
	}
	pluginExport = &PluginExport{
		IPlugin: iPlugin,
	}
	pluginId, _ := iPlugin.PluginId()
	handlder := slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{
		Level: slog.LevelDebug,
	})
	slog.SetDefault(slog.New(handlder).With("plugin", pluginId))
}
