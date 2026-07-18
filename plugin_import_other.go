//go:build !wasip1

package plugin_api

func UpdatePluginAuthData(data []byte) error {
	return nil
}
