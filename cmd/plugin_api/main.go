package main

import (
	"archive/zip"
	"bytes"
	"compress/flate"
	"errors"
	"html/template"

	"fmt"
	"io"
	"path/filepath"

	"log/slog"
	"os"
	"os/exec"

	"github.com/BurntSushi/toml"
)

type pluginConfig struct {
	Id        string   `toml:"id"`
	Name      string   `toml:"name"`
	Desc      string   `toml:"desc"`
	Author    []string `toml:"author"`
	Version   string   `toml:"version"`
	Icon      string   `toml:"icon"`
	Changelog []string `toml:"changelog"`
}

func main() {
	args := os.Args[1:]
	if len(args) == 0 || args[0] == "help" {
		showHelp()
	} else if args[0] == "build" {
		buildPlugin()
	} else if args[0] == "init" {
		if len(args) == 1 {
			fmt.Println("command init need argument eg: plugin_api init newName")
			os.Exit(1)
		}
		pluginName := args[1]
		_, err := os.Stat(pluginName)
		if err == nil {
			fmt.Printf("plugin %s exist", pluginName)
			os.Exit(1)
		}
		pluginConfig := pluginConfig{
			Id: pluginName,
		}
		_ = os.Mkdir(pluginName, 0755)
		for _, fileTemplate := range fileTemplates {
			fileNameTmp, err := template.New("").Parse(fileTemplate.FileName)
			if err != nil {
				fmt.Printf("parse template failed: %v\n", err)
				os.Exit(1)
			}
			var buf bytes.Buffer
			fileNameTmp.Execute(&buf, pluginConfig)
			fileName := buf.String()

			tmp, err := template.New(fileName).Parse(fileTemplate.Content)
			if err != nil {
				fmt.Printf("parse template failed: %v\n", err)
				os.Exit(1)
			}
			file, err := os.Create(filepath.Join(pluginName, fileName))
			if err != nil {
				fmt.Printf("open file failed: %v\n", err)
				os.Exit(1)
			}

			tmp.Execute(file, pluginConfig)
			file.Close()
		}
		fmt.Printf("plugin %s init success\n", pluginName)
	} else {
		showHelp()
	}
}

func showHelp() {
	fmt.Print(`Usage: plugin_api <commands> [argument]
commands:
	build:    	compile plugin
	init:    	init new plugin temp dir
	help:		show usage
`)
}

func buildPlugin() {
	pluginTomlFile := "plugin.toml"
	pluginFile, err := os.Open("plugin.toml")
	if err != nil {
		slog.Error("can open plugin config file plugin.toml")
		os.Exit(1)
	}
	pluginConfig := &pluginConfig{}
	_, err = toml.NewDecoder(pluginFile).Decode(pluginConfig)
	if err != nil {
		slog.Error("read plugin.toml failed", "err", err)
		os.Exit(1)
	}
	pluginFile.Close()

	if len(pluginConfig.Icon) > 0 {
		_, err = os.Stat(pluginConfig.Icon)
		if err != nil {
			slog.Error("read icon failed", "err", err)
			os.Exit(1)
		}
	}
	_, err = os.Stat("dist")
	if err != nil {
		if !errors.Is(err, os.ErrNotExist) {
			slog.Error("check dist dir failed", "err", err)
			os.Exit(1)
		}
		err = os.MkdirAll("dist", 0755)
		if err != nil {
			slog.Error("mkdir dist dir failed", "err", err)
			os.Exit(1)
		}
	} else {
		_ = os.RemoveAll("./dist/*")
	}

	buildWasmFile := fmt.Sprintf("dist/%s.wasm", pluginConfig.Id)
	defer os.Remove(buildWasmFile)
	cmd := exec.Command("tinygo", "build", "-p", "16", "-x", "-no-debug", "-target=wasip1", "-buildmode=c-shared", "-o", buildWasmFile, ".")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err = cmd.Run()
	if err != nil {
		slog.Error("exec command failed", "err", err)
		os.Exit(1)
	}

	outCompressFile := filepath.Join("./dist", fmt.Sprintf("%s_%s.zip", pluginConfig.Id, pluginConfig.Version))
	outFile, err := os.Create(outCompressFile)
	if err != nil {
		slog.Error("create file failed", "file", outCompressFile, "err", err)
		os.Exit(1)
	}
	defer outFile.Close()
	zw := zip.NewWriter(outFile)
	zw.RegisterCompressor(zip.Deflate, func(out io.Writer) (io.WriteCloser, error) {
		return flate.NewWriter(out, flate.BestCompression)
	})
	defer zw.Close()

	zipFileMap := map[string]string{
		pluginTomlFile:                          pluginTomlFile,
		fmt.Sprintf("%s.wasm", pluginConfig.Id): buildWasmFile,
		pluginConfig.Icon:                       pluginConfig.Icon,
	}

	for fileName, filePath := range zipFileMap {
		localFile, err := os.Open(filePath)
		if err != nil {
			slog.Error("zip create file failed", "file", filePath, "err", err)
			os.Exit(1)
		}

		zwfile, err := zw.Create(fileName)
		if err != nil {
			slog.Error("zip create file failed", "file", fileName, "err", err)
			os.Exit(1)
		}
		io.Copy(zwfile, localFile)
		localFile.Close()
	}

	slog.Info("build success", "plugin", pluginConfig.Name, "plugin_path", outCompressFile)
}
