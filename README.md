## Plugin API

define plugin api

```
type IPlugin interface {
  	// plugin id
  	PluginId() string
  	// get auth type like form edit,qrcode,oauth2
  	GetAuthType() *AuthType
  	// check auth data status
  	CheckAuth(*AuthType) *Status
  	// get auth data when check auth status is success
  	GetAuthData() []byte
  	// use auth data init auth
  	InitAuth([]byte) *Status
  	// plugin auth id,it need unqiue for same driver
  	PluginAuthId() string
  	// get dir entry from driver plugin
  	GetDirEntry(dir_path string, page, page_size uint64) *DirEntry
  	// get file entry resource from driver plugin
  	GetFileResource(file_path string) *FileResource
  	// close driver plugin
  	Close()
}
```

## Getting started
See the [plugin_temp](https://github.com/labulakalia/plugin_temp)
