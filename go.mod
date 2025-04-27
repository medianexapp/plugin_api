module github.com/medianexapp/plugin_api

go 1.24.0

require (
	github.com/BurntSushi/toml v1.4.0
	github.com/aperturerobotics/protobuf-go-lite v0.9.1
	github.com/labulakalia/wazero_net v0.0.9-0.20250427091815-5eb06e3a5aa6
)

require (
	github.com/aperturerobotics/json-iterator-lite v1.0.0 // indirect
	github.com/tetratelabs/wazero v1.9.1-0.20250414143203-0dea5d7ee1de // indirect
)

replace github.com/labulakalia/wazero_net => ../wazero_net
