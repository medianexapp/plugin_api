package plugin

func Double(value float64) *DoubleValue {
	return &DoubleValue{Value: value}
}

func Int64(value int64) *Int64Value {
	return &Int64Value{Value: value}
}

func Bool(value bool) *BoolValue {
	return &BoolValue{Value: value}
}

func String(value string) *StringValue {
	return &StringValue{Value: value}
}

func ObscureString(value string) *ObscureStringValue {
	return &ObscureStringValue{Value: value}
}

func DirPath(value string) *DirPathValue {
	return &DirPathValue{Value: value}
}

func FilePath(value string) *FilePathValue {
	return &FilePathValue{Value: value}
}
