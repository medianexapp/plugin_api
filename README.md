# Plugin API For Medianex

## How to devlop a plugin

> Need install [tinygo](https://github.com/tinygo-org/tinygo)  
> Note: tinygo's runtime file must replace this [PR](https://github.com/tinygo-org/tinygo/pull/4875/files)'s files src/runtime/\*.go, or wait next release

1. Install [plugin_api](https://github.com/medianexapp/plugin_api)  
   `go install github.com/medianexapp/plugin_api/cmd/plugin_api@main`
2. Init Plugin Project  
   `plugin_api init example`  
   `cd example`
3. Impl Plugin Method in file `plugin_impl.go`
4. Create your plugin's icon file and change plugin toml config file
5. Build Plugin  
   `make`
6. Install Plugin From Local
