package plugin_api

import (
	"log/slog"
	"os"

	"github.com/labulakalia/plugin_api/plugin"
)

type IPlugin interface {
	// plugin id
	PluginId() (string, error)
	// get auth type like form edit,qrcode,oauth2
	GetAuthType() (*plugin.AuthType, error)
	// check auth type input data
	// ret:
	// authdata []byte
	// err errir
	CheckAuthType(*plugin.AuthType) (authData []byte, err error)
	// check auth is success by raw auth data
	CheckAuthData([]byte) error
	// plugin auth id,it need unqiue for same driver
	PluginAuthId() (string, error)
	// get dir entry from driver plugin
	GetDirEntry(dir_path string, page, page_size uint64) (*plugin.DirEntry, error)
	// get file entry resource from driver plugin
	GetFileResource(file_path string) (*plugin.FileResource, error)
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
		Level: slog.LevelInfo,
	})
	slog.SetDefault(slog.New(handlder).With("plugin", pluginId))
}
