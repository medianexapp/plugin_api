//go:build linux

package httpclient

import (
	"fmt"
	"log/slog"
	"os"
	"os/exec"
	"strings"

	"golang.org/x/net/http/httpproxy"
)

func getSystemProxy() *httpproxy.Config {
	xdg := os.Getenv("XDG_CURRENT_DESKTOP")
	if xdg == "KDE" {
		return getKdeSystemProxy()
	} else if xdg == "GNAME" {
		return getGnomeSystemProxy()
	} else {
		return nil
	}
}

func getKdeSystemProxy() *httpproxy.Config {
	var cmdPre string
	_, err := exec.Command("sh", "-c", "command -v kreadconfig6").CombinedOutput()
	if err == nil {
		cmdPre = "kreadconfig6"
	}
	_, err = exec.Command("sh", "-c", "command -v kreadconfig5").CombinedOutput()
	if err == nil {
		cmdPre = "kreadconfig6"
	}
	if cmdPre == "" {
		return nil
	}
	proxyTypeCmd := cmdPre + ` --file kioslaverc --group "Proxy Settings" --key "ProxyType"`
	res, err := exec.Command("sh", "-c", proxyTypeCmd).CombinedOutput()
	if err != nil {
		slog.Error("run cmd failed", "cmd", proxyTypeCmd, "err", err)
		return nil
	}
	if string(res) == "0" {
		return nil
	}
	config := httpproxy.Config{}
	httpsProxyCmd := cmdPre + ` --file kioslaverc --group "Proxy Settings" --key "httpsProxy"`
	res, err = exec.Command("sh", "-c", httpsProxyCmd).CombinedOutput()
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpsProxyCmd, "err", err)
		return nil
	}
	if strings.TrimSpace(string(res)) != "" {
		config.HTTPSProxy = strings.TrimSpace(string(res))
	}
	httpProxyCmd := cmdPre + ` --file kioslaverc --group "Proxy Settings" --key "httpProxy"`
	res, err = exec.Command("sh", "-c", httpProxyCmd).CombinedOutput()
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpProxyCmd, "err", err)
		return nil
	}
	if strings.TrimSpace(string(res)) != "" {
		config.HTTPProxy = strings.TrimSpace(string(res))
	}
	noProxyCmd := cmdPre + ` --file kioslaverc --group "Proxy Settings" --key "NoProxyFor"`
	res, err = exec.Command("sh", "-c", noProxyCmd).CombinedOutput()
	if err != nil {
		slog.Error("run cmd failed", "cmd", noProxyCmd, "err", err)
		return nil
	}
	if strings.TrimSpace(string(res)) != "" {
		config.NoProxy = strings.TrimSpace(string(res))
	}
	return &config
}

func getGnomeSystemProxy() *httpproxy.Config {
	proxyModeCmd := "gsettings get org.gnome.system.proxy mode"
	res, err := exec.Command("sh", "-c", proxyModeCmd).CombinedOutput()
	if err != nil {
		slog.Error("run cmd failed", "cmd", proxyModeCmd, "err", err)
		return nil
	}
	if string(res) == "none" {
		return nil
	}
	config := httpproxy.Config{}
	httpHostCmd := "gsettings get org.gnome.system.proxy.http host"
	hostRes, err := runCmd(httpHostCmd)
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpHostCmd, "err", err)
		return nil
	}
	if string(res) == "none" {
		return nil
	}

	httpPortCmd := "gsettings get org.gnome.system.proxy.http port"
	portRes, err := runCmd(httpPortCmd)
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpPortCmd, "err", err)
		return nil
	}
	if hostRes != "" && portRes != "" {
		config.HTTPProxy = fmt.Sprintf("http://%s:%s", hostRes, portRes)
	}

	httpsHostCmd := "gsettings get org.gnome.system.proxy.https host"
	hostRes, err = runCmd(httpsHostCmd)
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpsHostCmd, "err", err)
		return nil
	}
	httpsPortCmd := "gsettings get org.gnome.system.proxy.https port"
	portRes, err = runCmd(httpsPortCmd)
	if err != nil {
		slog.Error("run cmd failed", "cmd", httpsPortCmd, "err", err)
		return nil
	}
	if hostRes != "" && portRes != "" {
		config.HTTPProxy = fmt.Sprintf("http://%s:%s", hostRes, portRes)
	}

	noProxyCmd := "gsettings get org.gnome.system.proxy ignore-hosts"
	noProxyRes, err := runCmd(noProxyCmd)
	if err != nil {
		slog.Error("run cmd failed", "cmd", noProxyCmd, "err", err)
		return nil
	}
	if noProxyRes != "" {
		config.NoProxy = strings.ReplaceAll(strings.ReplaceAll(noProxyRes, "[", ""), "]", "")
	}
	return &config
}
