package main

import (
	"os"
	"testing"
)

func TestTemplate(t *testing.T) {
	writeTemplate([]string{"init", "plugin1", "FILE_SYSTEM"})
	os.RemoveAll("plugin1")
}
