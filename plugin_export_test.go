package plugin_api

import (
	"errors"
	"log/slog"
	"os"
	"testing"

	"github.com/labulakalia/wazero_net/util"
)

// & 与 0 & 1 = 0  1 & 1 = 1
// | 或 0 | 1 = 1  1 | 1 = 1
// ^ 异或 0 ^ 1 = 1  1 ^ 1 = 0
// &^ 与非 0 &^ 1 = 0  1 &^ 1 = 1
func TestError(t *testing.T) {

	str := "this is error"
	ret := util.ErrorToUint64(errors.New(str))
	if util.Uint64HasError(ret) != true {
		t.Fatal("ret should has error")
	}
	ptr, dataLen := util.Uint64ToErrPtrLength(ret)
	res := util.PtrToString(ptr, dataLen)
	if res != str {
		t.Fatal("err not equal")
	}

	ret = util.ErrorToUint64(nil)
	if util.Uint64HasError(ret) == true {
		t.Fatal("ret should no error")
	}

}

func TestLo(t *testing.T) {

	handlder := slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{
		Level: slog.LevelDebug,
	})
	slog.SetDefault(slog.New(handlder).With("plugin", "ftp"))
	slog.SetLogLoggerLevel(slog.LevelDebug)
	slog.Error("isisisiss")

}
