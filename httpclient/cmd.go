package httpclient

import (
	"os/exec"
	"strings"
)

func runCmd(cmd string) (string, error) {
	res, err := exec.Command("sh", "-c", cmd).CombinedOutput()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(res)), nil
}
