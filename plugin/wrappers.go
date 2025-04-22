package plugin

func Double(value float64) *Formdata_FormItem_DoubleValue {
	return &Formdata_FormItem_DoubleValue{DoubleValue: &DoubleValue{Value: value}}
}

func Int64(value int64) *Formdata_FormItem_Int64Value {
	return &Formdata_FormItem_Int64Value{Int64Value: &Int64Value{Value: value}}
}

func Bool(value bool) *Formdata_FormItem_BoolValue {
	return &Formdata_FormItem_BoolValue{BoolValue: &BoolValue{Value: value}}
}

func String(value string) *Formdata_FormItem_StringValue {
	return &Formdata_FormItem_StringValue{StringValue: &StringValue{Value: value}}
}

func ObscureString(value string) *Formdata_FormItem_ObscureStringValue {
	return &Formdata_FormItem_ObscureStringValue{ObscureStringValue: &ObscureStringValue{Value: value}}
}

func DirPath(value string) *Formdata_FormItem_DirPathValue {
	return &Formdata_FormItem_DirPathValue{DirPathValue: &DirPathValue{Value: value}}
}

func FilePath(value string) *Formdata_FormItem_FilePathValue {
	return &Formdata_FormItem_FilePathValue{FilePathValue: &FilePathValue{Value: value}}
}
