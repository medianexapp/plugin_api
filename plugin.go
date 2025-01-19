package plugin_api

import "github.com/labulakalia/plugin_api/plugin"

type IPlugin interface {
	// plugin id
	PluginId() string
	// get auth type like form edit,qrcode,oauth2
	GetAuthType() *plugin.AuthType
	// check auth data status
	CheckAuth(*plugin.AuthType) *plugin.Status
	// get auth data when check auth status is success
	GetAuthData() []byte
	// use auth data init auth
	CheckAuthData([]byte) *plugin.Status
	// plugin auth id,it need unqiue for same driver
	PluginAuthId() string
	// get dir entry from driver plugin
	GetDirEntry(dir_path string, page, page_size uint64) *plugin.DirEntry
	// get file entry resource from driver plugin
	GetFileResource(file_path string) *plugin.FileResource
	// close driver plugin
	Close()
}

func RegistryPlugin(iPlugin IPlugin) {
	pluginExport = &PluginExport{
		IPlugin: iPlugin,
	}
}
