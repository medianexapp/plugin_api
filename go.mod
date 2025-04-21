module github.com/labulakalia/plugin_api

go 1.24.0

require (
	github.com/BurntSushi/toml v1.4.0
	github.com/aperturerobotics/protobuf-go-lite v0.9.1
	github.com/labulakalia/wazero_net v0.0.9-0.20250421115310-78b37f91b28a
)

require (
	github.com/aperturerobotics/json-iterator-lite v1.0.0 // indirect
	github.com/tetratelabs/wazero v1.9.0 // indirect
)

replace github.com/labulakalia/wazero_net => ../wazero_net
