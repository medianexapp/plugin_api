package plugin

func Double(value float64) *DoubleValue {
	return &DoubleValue{Value: value}
}

func Float(value float32) *FloatValue {
	return &FloatValue{Value: value}
}

func Int64(value int64) *Int64Value {
	return &Int64Value{Value: value}
}

func UInt64(value uint64) *UInt64Value {
	return &UInt64Value{Value: value}
}

func Int32(value int32) *Int32Value {
	return &Int32Value{Value: value}
}

func UInt32(value uint32) *UInt32Value {
	return &UInt32Value{Value: value}
}

func Bool(value bool) *BoolValue {
	return &BoolValue{Value: value}
}

func String(value string) *StringValue {
	return &StringValue{Value: value}
}

func Bytes(value []byte) *BytesValue {
	return &BytesValue{Value: value}
}

func Obscure(value string) *ObscureValue {
	return &ObscureValue{Value: value}
}

func LocalPath(value string) *LocalPathValue {
	return &LocalPathValue{Value: value}
}
