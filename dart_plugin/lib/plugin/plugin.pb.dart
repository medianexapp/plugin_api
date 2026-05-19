// This is a generated file - do not edit.
//
// Generated from plugin/plugin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'plugin.pbenum.dart';
import 'wrappers.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'plugin.pbenum.dart';

enum Formdata_FormItem_Value {
  doubleValue,
  int64Value,
  boolValue,
  stringValue,
  obscureStringValue,
  dirPathValue,
  filePathValue,
  notSet
}

class Formdata_FormItem extends $pb.GeneratedMessage {
  factory Formdata_FormItem({
    $core.String? name,
    $0.DoubleValue? doubleValue,
    $0.Int64Value? int64Value,
    $0.BoolValue? boolValue,
    $0.StringValue? stringValue,
    $0.ObscureStringValue? obscureStringValue,
    $0.DirPathValue? dirPathValue,
    $0.FilePathValue? filePathValue,
    $core.Iterable<Formdata_FormItem>? enumValues,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (doubleValue != null) result.doubleValue = doubleValue;
    if (int64Value != null) result.int64Value = int64Value;
    if (boolValue != null) result.boolValue = boolValue;
    if (stringValue != null) result.stringValue = stringValue;
    if (obscureStringValue != null)
      result.obscureStringValue = obscureStringValue;
    if (dirPathValue != null) result.dirPathValue = dirPathValue;
    if (filePathValue != null) result.filePathValue = filePathValue;
    if (enumValues != null) result.enumValues.addAll(enumValues);
    return result;
  }

  Formdata_FormItem._();

  factory Formdata_FormItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Formdata_FormItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Formdata_FormItem_Value>
      _Formdata_FormItem_ValueByTag = {
    2: Formdata_FormItem_Value.doubleValue,
    3: Formdata_FormItem_Value.int64Value,
    4: Formdata_FormItem_Value.boolValue,
    5: Formdata_FormItem_Value.stringValue,
    6: Formdata_FormItem_Value.obscureStringValue,
    7: Formdata_FormItem_Value.dirPathValue,
    8: Formdata_FormItem_Value.filePathValue,
    0: Formdata_FormItem_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Formdata.FormItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.DoubleValue>(2, _omitFieldNames ? '' : 'doubleValue',
        subBuilder: $0.DoubleValue.create)
    ..aOM<$0.Int64Value>(3, _omitFieldNames ? '' : 'int64Value',
        subBuilder: $0.Int64Value.create)
    ..aOM<$0.BoolValue>(4, _omitFieldNames ? '' : 'boolValue',
        subBuilder: $0.BoolValue.create)
    ..aOM<$0.StringValue>(5, _omitFieldNames ? '' : 'stringValue',
        subBuilder: $0.StringValue.create)
    ..aOM<$0.ObscureStringValue>(6, _omitFieldNames ? '' : 'obscureStringValue',
        subBuilder: $0.ObscureStringValue.create)
    ..aOM<$0.DirPathValue>(7, _omitFieldNames ? '' : 'dirPathValue',
        subBuilder: $0.DirPathValue.create)
    ..aOM<$0.FilePathValue>(8, _omitFieldNames ? '' : 'filePathValue',
        subBuilder: $0.FilePathValue.create)
    ..pPM<Formdata_FormItem>(10, _omitFieldNames ? '' : 'enumValues',
        subBuilder: Formdata_FormItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Formdata_FormItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Formdata_FormItem copyWith(void Function(Formdata_FormItem) updates) =>
      super.copyWith((message) => updates(message as Formdata_FormItem))
          as Formdata_FormItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Formdata_FormItem create() => Formdata_FormItem._();
  @$core.override
  Formdata_FormItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Formdata_FormItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Formdata_FormItem>(create);
  static Formdata_FormItem? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  Formdata_FormItem_Value whichValue() =>
      _Formdata_FormItem_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.DoubleValue get doubleValue => $_getN(1);
  @$pb.TagNumber(2)
  set doubleValue($0.DoubleValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDoubleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleValue() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.DoubleValue ensureDoubleValue() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Int64Value get int64Value => $_getN(2);
  @$pb.TagNumber(3)
  set int64Value($0.Int64Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInt64Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64Value() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Int64Value ensureInt64Value() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.BoolValue get boolValue => $_getN(3);
  @$pb.TagNumber(4)
  set boolValue($0.BoolValue value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolValue() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.BoolValue ensureBoolValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.StringValue get stringValue => $_getN(4);
  @$pb.TagNumber(5)
  set stringValue($0.StringValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStringValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStringValue() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.StringValue ensureStringValue() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.ObscureStringValue get obscureStringValue => $_getN(5);
  @$pb.TagNumber(6)
  set obscureStringValue($0.ObscureStringValue value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasObscureStringValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearObscureStringValue() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.ObscureStringValue ensureObscureStringValue() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.DirPathValue get dirPathValue => $_getN(6);
  @$pb.TagNumber(7)
  set dirPathValue($0.DirPathValue value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDirPathValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearDirPathValue() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.DirPathValue ensureDirPathValue() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.FilePathValue get filePathValue => $_getN(7);
  @$pb.TagNumber(8)
  set filePathValue($0.FilePathValue value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFilePathValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearFilePathValue() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.FilePathValue ensureFilePathValue() => $_ensure(7);

  @$pb.TagNumber(10)
  $pb.PbList<Formdata_FormItem> get enumValues => $_getList(8);
}

class Formdata extends $pb.GeneratedMessage {
  factory Formdata({
    $core.Iterable<Formdata_FormItem>? formItems,
  }) {
    final result = create();
    if (formItems != null) result.formItems.addAll(formItems);
    return result;
  }

  Formdata._();

  factory Formdata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Formdata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Formdata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<Formdata_FormItem>(11, _omitFieldNames ? '' : 'formItems',
        subBuilder: Formdata_FormItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Formdata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Formdata copyWith(void Function(Formdata) updates) =>
      super.copyWith((message) => updates(message as Formdata)) as Formdata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Formdata create() => Formdata._();
  @$core.override
  Formdata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Formdata getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Formdata>(create);
  static Formdata? _defaultInstance;

  @$pb.TagNumber(11)
  $pb.PbList<Formdata_FormItem> get formItems => $_getList(0);
}

class Scanqrcode extends $pb.GeneratedMessage {
  factory Scanqrcode({
    $core.List<$core.int>? qrcodeImage,
    $core.String? qrcodeImageParam,
    $fixnum.Int64? qrcodeExpireTime,
    $core.String? qrcodeImageUrl,
    $core.String? qrcodeImageContent,
  }) {
    final result = create();
    if (qrcodeImage != null) result.qrcodeImage = qrcodeImage;
    if (qrcodeImageParam != null) result.qrcodeImageParam = qrcodeImageParam;
    if (qrcodeExpireTime != null) result.qrcodeExpireTime = qrcodeExpireTime;
    if (qrcodeImageUrl != null) result.qrcodeImageUrl = qrcodeImageUrl;
    if (qrcodeImageContent != null)
      result.qrcodeImageContent = qrcodeImageContent;
    return result;
  }

  Scanqrcode._();

  factory Scanqrcode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Scanqrcode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Scanqrcode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'qrcodeImage', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'qrcodeImageParam')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'qrcodeExpireTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'qrcodeImageUrl')
    ..aOS(5, _omitFieldNames ? '' : 'qrcodeImageContent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Scanqrcode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Scanqrcode copyWith(void Function(Scanqrcode) updates) =>
      super.copyWith((message) => updates(message as Scanqrcode)) as Scanqrcode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scanqrcode create() => Scanqrcode._();
  @$core.override
  Scanqrcode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Scanqrcode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Scanqrcode>(create);
  static Scanqrcode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get qrcodeImage => $_getN(0);
  @$pb.TagNumber(1)
  set qrcodeImage($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQrcodeImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearQrcodeImage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get qrcodeImageParam => $_getSZ(1);
  @$pb.TagNumber(2)
  set qrcodeImageParam($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQrcodeImageParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearQrcodeImageParam() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get qrcodeExpireTime => $_getI64(2);
  @$pb.TagNumber(3)
  set qrcodeExpireTime($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQrcodeExpireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearQrcodeExpireTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get qrcodeImageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set qrcodeImageUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasQrcodeImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearQrcodeImageUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get qrcodeImageContent => $_getSZ(4);
  @$pb.TagNumber(5)
  set qrcodeImageContent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasQrcodeImageContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearQrcodeImageContent() => $_clearField(5);
}

class Callback extends $pb.GeneratedMessage {
  factory Callback({
    $core.String? callbackUrl,
    $core.String? callbackUrlParam,
    $core.String? callbackUrlData,
  }) {
    final result = create();
    if (callbackUrl != null) result.callbackUrl = callbackUrl;
    if (callbackUrlParam != null) result.callbackUrlParam = callbackUrlParam;
    if (callbackUrlData != null) result.callbackUrlData = callbackUrlData;
    return result;
  }

  Callback._();

  factory Callback.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Callback.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Callback',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'callbackUrl')
    ..aOS(2, _omitFieldNames ? '' : 'callbackUrlParam')
    ..aOS(3, _omitFieldNames ? '' : 'callbackUrlData')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Callback clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Callback copyWith(void Function(Callback) updates) =>
      super.copyWith((message) => updates(message as Callback)) as Callback;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Callback create() => Callback._();
  @$core.override
  Callback createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Callback getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Callback>(create);
  static Callback? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get callbackUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set callbackUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCallbackUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallbackUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get callbackUrlParam => $_getSZ(1);
  @$pb.TagNumber(2)
  set callbackUrlParam($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCallbackUrlParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallbackUrlParam() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get callbackUrlData => $_getSZ(2);
  @$pb.TagNumber(3)
  set callbackUrlData($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCallbackUrlData() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallbackUrlData() => $_clearField(3);
}

class Refresh extends $pb.GeneratedMessage {
  factory Refresh({
    AuthData? authData,
  }) {
    final result = create();
    if (authData != null) result.authData = authData;
    return result;
  }

  Refresh._();

  factory Refresh.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Refresh.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Refresh',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOM<AuthData>(1, _omitFieldNames ? '' : 'authData',
        subBuilder: AuthData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Refresh clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Refresh copyWith(void Function(Refresh) updates) =>
      super.copyWith((message) => updates(message as Refresh)) as Refresh;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Refresh create() => Refresh._();
  @$core.override
  Refresh createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Refresh getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Refresh>(create);
  static Refresh? _defaultInstance;

  @$pb.TagNumber(1)
  AuthData get authData => $_getN(0);
  @$pb.TagNumber(1)
  set authData(AuthData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAuthData() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthData() => $_clearField(1);
  @$pb.TagNumber(1)
  AuthData ensureAuthData() => $_ensure(0);
}

enum AuthMethod_Method { formdata, scanqrcode, callback, refresh, notSet }

class AuthMethod extends $pb.GeneratedMessage {
  factory AuthMethod({
    Formdata? formdata,
    Scanqrcode? scanqrcode,
    Callback? callback,
    Refresh? refresh,
    $core.String? helpDocUrl,
  }) {
    final result = create();
    if (formdata != null) result.formdata = formdata;
    if (scanqrcode != null) result.scanqrcode = scanqrcode;
    if (callback != null) result.callback = callback;
    if (refresh != null) result.refresh = refresh;
    if (helpDocUrl != null) result.helpDocUrl = helpDocUrl;
    return result;
  }

  AuthMethod._();

  factory AuthMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AuthMethod_Method> _AuthMethod_MethodByTag =
      {
    1: AuthMethod_Method.formdata,
    2: AuthMethod_Method.scanqrcode,
    3: AuthMethod_Method.callback,
    4: AuthMethod_Method.refresh,
    0: AuthMethod_Method.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<Formdata>(1, _omitFieldNames ? '' : 'formdata',
        subBuilder: Formdata.create)
    ..aOM<Scanqrcode>(2, _omitFieldNames ? '' : 'scanqrcode',
        subBuilder: Scanqrcode.create)
    ..aOM<Callback>(3, _omitFieldNames ? '' : 'callback',
        subBuilder: Callback.create)
    ..aOM<Refresh>(4, _omitFieldNames ? '' : 'refresh',
        subBuilder: Refresh.create)
    ..aOS(5, _omitFieldNames ? '' : 'helpDocUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthMethod copyWith(void Function(AuthMethod) updates) =>
      super.copyWith((message) => updates(message as AuthMethod)) as AuthMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthMethod create() => AuthMethod._();
  @$core.override
  AuthMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthMethod>(create);
  static AuthMethod? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  AuthMethod_Method whichMethod() => _AuthMethod_MethodByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearMethod() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Formdata get formdata => $_getN(0);
  @$pb.TagNumber(1)
  set formdata(Formdata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFormdata() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormdata() => $_clearField(1);
  @$pb.TagNumber(1)
  Formdata ensureFormdata() => $_ensure(0);

  @$pb.TagNumber(2)
  Scanqrcode get scanqrcode => $_getN(1);
  @$pb.TagNumber(2)
  set scanqrcode(Scanqrcode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScanqrcode() => $_has(1);
  @$pb.TagNumber(2)
  void clearScanqrcode() => $_clearField(2);
  @$pb.TagNumber(2)
  Scanqrcode ensureScanqrcode() => $_ensure(1);

  @$pb.TagNumber(3)
  Callback get callback => $_getN(2);
  @$pb.TagNumber(3)
  set callback(Callback value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCallback() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallback() => $_clearField(3);
  @$pb.TagNumber(3)
  Callback ensureCallback() => $_ensure(2);

  @$pb.TagNumber(4)
  Refresh get refresh => $_getN(3);
  @$pb.TagNumber(4)
  set refresh(Refresh value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRefresh() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefresh() => $_clearField(4);
  @$pb.TagNumber(4)
  Refresh ensureRefresh() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get helpDocUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set helpDocUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHelpDocUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearHelpDocUrl() => $_clearField(5);
}

class Auth extends $pb.GeneratedMessage {
  factory Auth({
    $core.Iterable<AuthMethod>? authMethods,
  }) {
    final result = create();
    if (authMethods != null) result.authMethods.addAll(authMethods);
    return result;
  }

  Auth._();

  factory Auth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<AuthMethod>(1, _omitFieldNames ? '' : 'authMethods',
        subBuilder: AuthMethod.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth copyWith(void Function(Auth) updates) =>
      super.copyWith((message) => updates(message as Auth)) as Auth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth create() => Auth._();
  @$core.override
  Auth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth>(create);
  static Auth? _defaultInstance;

  /// valid auth methods
  @$pb.TagNumber(1)
  $pb.PbList<AuthMethod> get authMethods => $_getList(0);
}

class FileEntry extends $pb.GeneratedMessage {
  factory FileEntry({
    $core.String? name,
    FileEntry_FileType? fileType,
    $fixnum.Int64? size,
    $core.List<$core.int>? rawData,
    $fixnum.Int64? createdTime,
    $fixnum.Int64? modifiedTime,
    $fixnum.Int64? accessedTime,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (fileType != null) result.fileType = fileType;
    if (size != null) result.size = size;
    if (rawData != null) result.rawData = rawData;
    if (createdTime != null) result.createdTime = createdTime;
    if (modifiedTime != null) result.modifiedTime = modifiedTime;
    if (accessedTime != null) result.accessedTime = accessedTime;
    return result;
  }

  FileEntry._();

  factory FileEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aE<FileEntry_FileType>(2, _omitFieldNames ? '' : 'fileType',
        enumValues: FileEntry_FileType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'rawData', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'createdTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'modifiedTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        12, _omitFieldNames ? '' : 'accessedTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileEntry copyWith(void Function(FileEntry) updates) =>
      super.copyWith((message) => updates(message as FileEntry)) as FileEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileEntry create() => FileEntry._();
  @$core.override
  FileEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileEntry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileEntry>(create);
  static FileEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  FileEntry_FileType get fileType => $_getN(1);
  @$pb.TagNumber(2)
  set fileType(FileEntry_FileType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFileType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get rawData => $_getN(3);
  @$pb.TagNumber(4)
  set rawData($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRawData() => $_has(3);
  @$pb.TagNumber(4)
  void clearRawData() => $_clearField(4);

  @$pb.TagNumber(10)
  $fixnum.Int64 get createdTime => $_getI64(4);
  @$pb.TagNumber(10)
  set createdTime($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(10)
  $core.bool hasCreatedTime() => $_has(4);
  @$pb.TagNumber(10)
  void clearCreatedTime() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get modifiedTime => $_getI64(5);
  @$pb.TagNumber(11)
  set modifiedTime($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(11)
  $core.bool hasModifiedTime() => $_has(5);
  @$pb.TagNumber(11)
  void clearModifiedTime() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get accessedTime => $_getI64(6);
  @$pb.TagNumber(12)
  set accessedTime($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(12)
  $core.bool hasAccessedTime() => $_has(6);
  @$pb.TagNumber(12)
  void clearAccessedTime() => $_clearField(12);
}

class DirEntry extends $pb.GeneratedMessage {
  factory DirEntry({
    $core.Iterable<FileEntry>? fileEntries,
    $fixnum.Int64? pageSize,
    $core.String? dirPageKey,
  }) {
    final result = create();
    if (fileEntries != null) result.fileEntries.addAll(fileEntries);
    if (pageSize != null) result.pageSize = pageSize;
    if (dirPageKey != null) result.dirPageKey = dirPageKey;
    return result;
  }

  DirEntry._();

  factory DirEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DirEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DirEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<FileEntry>(1, _omitFieldNames ? '' : 'fileEntries',
        subBuilder: FileEntry.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'dirPageKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DirEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DirEntry copyWith(void Function(DirEntry) updates) =>
      super.copyWith((message) => updates(message as DirEntry)) as DirEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DirEntry create() => DirEntry._();
  @$core.override
  DirEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DirEntry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirEntry>(create);
  static DirEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FileEntry> get fileEntries => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => $_clearField(2);

  @$pb.TagNumber(10)
  $core.String get dirPageKey => $_getSZ(2);
  @$pb.TagNumber(10)
  set dirPageKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(10)
  $core.bool hasDirPageKey() => $_has(2);
  @$pb.TagNumber(10)
  void clearDirPageKey() => $_clearField(10);
}

class GetDirEntryRequest extends $pb.GeneratedMessage {
  factory GetDirEntryRequest({
    $core.String? path,
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    FileEntry? fileEntry,
    $core.String? dirPageKey,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    if (fileEntry != null) result.fileEntry = fileEntry;
    if (dirPageKey != null) result.dirPageKey = dirPageKey;
    return result;
  }

  GetDirEntryRequest._();

  factory GetDirEntryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetDirEntryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDirEntryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'page', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<FileEntry>(10, _omitFieldNames ? '' : 'fileEntry',
        subBuilder: FileEntry.create)
    ..aOS(12, _omitFieldNames ? '' : 'dirPageKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDirEntryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDirEntryRequest copyWith(void Function(GetDirEntryRequest) updates) =>
      super.copyWith((message) => updates(message as GetDirEntryRequest))
          as GetDirEntryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDirEntryRequest create() => GetDirEntryRequest._();
  @$core.override
  GetDirEntryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetDirEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDirEntryRequest>(create);
  static GetDirEntryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(2)
  set page($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);

  /// default page_size is 100,if this not for you,change is on DirEntry.PageSize
  @$pb.TagNumber(3)
  $fixnum.Int64 get pageSize => $_getI64(2);
  @$pb.TagNumber(3)
  set pageSize($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => $_clearField(3);

  @$pb.TagNumber(10)
  FileEntry get fileEntry => $_getN(3);
  @$pb.TagNumber(10)
  set fileEntry(FileEntry value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFileEntry() => $_has(3);
  @$pb.TagNumber(10)
  void clearFileEntry() => $_clearField(10);
  @$pb.TagNumber(10)
  FileEntry ensureFileEntry() => $_ensure(3);

  @$pb.TagNumber(12)
  $core.String get dirPageKey => $_getSZ(4);
  @$pb.TagNumber(12)
  set dirPageKey($core.String value) => $_setString(4, value);
  @$pb.TagNumber(12)
  $core.bool hasDirPageKey() => $_has(4);
  @$pb.TagNumber(12)
  void clearDirPageKey() => $_clearField(12);
}

class GetFileResourceRequest extends $pb.GeneratedMessage {
  factory GetFileResourceRequest({
    $core.String? filePath,
    FileEntry? fileEntry,
    $core.bool? isMedia,
    $core.String? mediaPlayId,
  }) {
    final result = create();
    if (filePath != null) result.filePath = filePath;
    if (fileEntry != null) result.fileEntry = fileEntry;
    if (isMedia != null) result.isMedia = isMedia;
    if (mediaPlayId != null) result.mediaPlayId = mediaPlayId;
    return result;
  }

  GetFileResourceRequest._();

  factory GetFileResourceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFileResourceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFileResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filePath')
    ..aOM<FileEntry>(10, _omitFieldNames ? '' : 'fileEntry',
        subBuilder: FileEntry.create)
    ..aOB(11, _omitFieldNames ? '' : 'isMedia')
    ..aOS(20, _omitFieldNames ? '' : 'mediaPlayId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileResourceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileResourceRequest copyWith(
          void Function(GetFileResourceRequest) updates) =>
      super.copyWith((message) => updates(message as GetFileResourceRequest))
          as GetFileResourceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileResourceRequest create() => GetFileResourceRequest._();
  @$core.override
  GetFileResourceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFileResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFileResourceRequest>(create);
  static GetFileResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set filePath($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFilePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilePath() => $_clearField(1);

  @$pb.TagNumber(10)
  FileEntry get fileEntry => $_getN(1);
  @$pb.TagNumber(10)
  set fileEntry(FileEntry value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFileEntry() => $_has(1);
  @$pb.TagNumber(10)
  void clearFileEntry() => $_clearField(10);
  @$pb.TagNumber(10)
  FileEntry ensureFileEntry() => $_ensure(1);

  @$pb.TagNumber(11)
  $core.bool get isMedia => $_getBF(2);
  @$pb.TagNumber(11)
  set isMedia($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(11)
  $core.bool hasIsMedia() => $_has(2);
  @$pb.TagNumber(11)
  void clearIsMedia() => $_clearField(11);

  /// media Item play item id
  @$pb.TagNumber(20)
  $core.String get mediaPlayId => $_getSZ(3);
  @$pb.TagNumber(20)
  set mediaPlayId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(20)
  $core.bool hasMediaPlayId() => $_has(3);
  @$pb.TagNumber(20)
  void clearMediaPlayId() => $_clearField(20);
}

class FileResource_FileResourceData extends $pb.GeneratedMessage {
  factory FileResource_FileResourceData({
    $core.String? url,
    FileResource_Resolution? resolution,
    $fixnum.Int64? expireTime,
    FileResource_ResourceType? resourceType,
    $core.String? title,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? header,
    $fixnum.Int64? size,
    $core.bool? proxy,
    $fixnum.Int64? proxyChunkSize,
    $fixnum.Int64? proxyChunkParallel,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (resolution != null) result.resolution = resolution;
    if (expireTime != null) result.expireTime = expireTime;
    if (resourceType != null) result.resourceType = resourceType;
    if (title != null) result.title = title;
    if (header != null) result.header.addEntries(header);
    if (size != null) result.size = size;
    if (proxy != null) result.proxy = proxy;
    if (proxyChunkSize != null) result.proxyChunkSize = proxyChunkSize;
    if (proxyChunkParallel != null)
      result.proxyChunkParallel = proxyChunkParallel;
    return result;
  }

  FileResource_FileResourceData._();

  factory FileResource_FileResourceData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileResource_FileResourceData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileResource.FileResourceData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aE<FileResource_Resolution>(2, _omitFieldNames ? '' : 'resolution',
        enumValues: FileResource_Resolution.values)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'expireTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<FileResource_ResourceType>(4, _omitFieldNames ? '' : 'resourceType',
        enumValues: FileResource_ResourceType.values)
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'header',
        entryClassName: 'FileResource.FileResourceData.HeaderEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('plugin'))
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(8, _omitFieldNames ? '' : 'proxy')
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'proxyChunkSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'proxyChunkParallel', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileResource_FileResourceData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileResource_FileResourceData copyWith(
          void Function(FileResource_FileResourceData) updates) =>
      super.copyWith(
              (message) => updates(message as FileResource_FileResourceData))
          as FileResource_FileResourceData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileResource_FileResourceData create() =>
      FileResource_FileResourceData._();
  @$core.override
  FileResource_FileResourceData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileResource_FileResourceData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileResource_FileResourceData>(create);
  static FileResource_FileResourceData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  FileResource_Resolution get resolution => $_getN(1);
  @$pb.TagNumber(2)
  set resolution(FileResource_Resolution value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResolution() => $_has(1);
  @$pb.TagNumber(2)
  void clearResolution() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expireTime => $_getI64(2);
  @$pb.TagNumber(3)
  set expireTime($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireTime() => $_clearField(3);

  @$pb.TagNumber(4)
  FileResource_ResourceType get resourceType => $_getN(3);
  @$pb.TagNumber(4)
  set resourceType(FileResource_ResourceType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasResourceType() => $_has(3);
  @$pb.TagNumber(4)
  void clearResourceType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get header => $_getMap(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get size => $_getI64(6);
  @$pb.TagNumber(7)
  set size($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearSize() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get proxy => $_getBF(7);
  @$pb.TagNumber(8)
  set proxy($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasProxy() => $_has(7);
  @$pb.TagNumber(8)
  void clearProxy() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get proxyChunkSize => $_getI64(8);
  @$pb.TagNumber(9)
  set proxyChunkSize($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasProxyChunkSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearProxyChunkSize() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get proxyChunkParallel => $_getI64(9);
  @$pb.TagNumber(10)
  set proxyChunkParallel($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasProxyChunkParallel() => $_has(9);
  @$pb.TagNumber(10)
  void clearProxyChunkParallel() => $_clearField(10);
}

class FileResource extends $pb.GeneratedMessage {
  factory FileResource({
    $core.Iterable<FileResource_FileResourceData>? fileResourceData,
  }) {
    final result = create();
    if (fileResourceData != null)
      result.fileResourceData.addAll(fileResourceData);
    return result;
  }

  FileResource._();

  factory FileResource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileResource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileResource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<FileResource_FileResourceData>(
        1, _omitFieldNames ? '' : 'fileResourceData',
        subBuilder: FileResource_FileResourceData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileResource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileResource copyWith(void Function(FileResource) updates) =>
      super.copyWith((message) => updates(message as FileResource))
          as FileResource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileResource create() => FileResource._();
  @$core.override
  FileResource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileResource>(create);
  static FileResource? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FileResource_FileResourceData> get fileResourceData =>
      $_getList(0);
}

class AuthData extends $pb.GeneratedMessage {
  factory AuthData({
    $core.List<$core.int>? authDataBytes,
    $fixnum.Int64? authDataExpiredTime,
  }) {
    final result = create();
    if (authDataBytes != null) result.authDataBytes = authDataBytes;
    if (authDataExpiredTime != null)
      result.authDataExpiredTime = authDataExpiredTime;
    return result;
  }

  AuthData._();

  factory AuthData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'authDataBytes', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'authDataExpiredTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthData copyWith(void Function(AuthData) updates) =>
      super.copyWith((message) => updates(message as AuthData)) as AuthData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthData create() => AuthData._();
  @$core.override
  AuthData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthData>(create);
  static AuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get authDataBytes => $_getN(0);
  @$pb.TagNumber(1)
  set authDataBytes($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAuthDataBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthDataBytes() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get authDataExpiredTime => $_getI64(1);
  @$pb.TagNumber(2)
  set authDataExpiredTime($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthDataExpiredTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthDataExpiredTime() => $_clearField(2);
}

/// oauth config
class OauthConfig extends $pb.GeneratedMessage {
  factory OauthConfig({
    $core.String? clientId,
    $core.String? clientSecret,
    $core.String? redirectUri,
    $core.Iterable<$core.String>? scopes,
    $core.String? authUrl,
    $core.String? qrcodeUrl,
    $core.String? tokenUrl,
    $core.String? tokenReqType,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (clientSecret != null) result.clientSecret = clientSecret;
    if (redirectUri != null) result.redirectUri = redirectUri;
    if (scopes != null) result.scopes.addAll(scopes);
    if (authUrl != null) result.authUrl = authUrl;
    if (qrcodeUrl != null) result.qrcodeUrl = qrcodeUrl;
    if (tokenUrl != null) result.tokenUrl = tokenUrl;
    if (tokenReqType != null) result.tokenReqType = tokenReqType;
    return result;
  }

  OauthConfig._();

  factory OauthConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OauthConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OauthConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientId')
    ..aOS(2, _omitFieldNames ? '' : 'clientSecret')
    ..aOS(3, _omitFieldNames ? '' : 'redirectUri')
    ..pPS(4, _omitFieldNames ? '' : 'scopes')
    ..aOS(5, _omitFieldNames ? '' : 'authUrl')
    ..aOS(6, _omitFieldNames ? '' : 'qrcodeUrl')
    ..aOS(10, _omitFieldNames ? '' : 'tokenUrl')
    ..aOS(11, _omitFieldNames ? '' : 'tokenReqType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OauthConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OauthConfig copyWith(void Function(OauthConfig) updates) =>
      super.copyWith((message) => updates(message as OauthConfig))
          as OauthConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OauthConfig create() => OauthConfig._();
  @$core.override
  OauthConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OauthConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OauthConfig>(create);
  static OauthConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientSecret => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientSecret($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasClientSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientSecret() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get redirectUri => $_getSZ(2);
  @$pb.TagNumber(3)
  set redirectUri($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRedirectUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedirectUri() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get scopes => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get authUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set authUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAuthUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get qrcodeUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set qrcodeUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasQrcodeUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearQrcodeUrl() => $_clearField(6);

  @$pb.TagNumber(10)
  $core.String get tokenUrl => $_getSZ(6);
  @$pb.TagNumber(10)
  set tokenUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(10)
  $core.bool hasTokenUrl() => $_has(6);
  @$pb.TagNumber(10)
  void clearTokenUrl() => $_clearField(10);

  /// json POST application/json
  /// form POST application/x-www-form-urlencoded
  /// uri GET
  @$pb.TagNumber(11)
  $core.String get tokenReqType => $_getSZ(7);
  @$pb.TagNumber(11)
  set tokenReqType($core.String value) => $_setString(7, value);
  @$pb.TagNumber(11)
  $core.bool hasTokenReqType() => $_has(7);
  @$pb.TagNumber(11)
  void clearTokenReqType() => $_clearField(11);
}

class Token extends $pb.GeneratedMessage {
  factory Token({
    $core.String? tokenType,
    $core.String? accessToken,
    $core.String? refreshToken,
    $fixnum.Int64? expiresIn,
  }) {
    final result = create();
    if (tokenType != null) result.tokenType = tokenType;
    if (accessToken != null) result.accessToken = accessToken;
    if (refreshToken != null) result.refreshToken = refreshToken;
    if (expiresIn != null) result.expiresIn = expiresIn;
    return result;
  }

  Token._();

  factory Token.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Token.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Token',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tokenType')
    ..aOS(2, _omitFieldNames ? '' : 'accessToken')
    ..aOS(3, _omitFieldNames ? '' : 'refreshToken')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'expiresIn', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Token clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Token copyWith(void Function(Token) updates) =>
      super.copyWith((message) => updates(message as Token)) as Token;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  @$core.override
  Token createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenType => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTokenType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expiresIn => $_getI64(3);
  @$pb.TagNumber(4)
  set expiresIn($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExpiresIn() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresIn() => $_clearField(4);
}

class Item extends $pb.GeneratedMessage {
  factory Item({
    $core.String? name,
    $core.String? value,
    $core.String? icon,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    if (icon != null) result.icon = icon;
    return result;
  }

  Item._();

  factory Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item copyWith(void Function(Item) updates) =>
      super.copyWith((message) => updates(message as Item)) as Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  @$core.override
  Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);
}

/// menu
class MediaMenu extends $pb.GeneratedMessage {
  factory MediaMenu({
    $core.Iterable<Item>? menus,
  }) {
    final result = create();
    if (menus != null) result.menus.addAll(menus);
    return result;
  }

  MediaMenu._();

  factory MediaMenu.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaMenu.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaMenu',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<Item>(1, _omitFieldNames ? '' : 'menus', subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaMenu clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaMenu copyWith(void Function(MediaMenu) updates) =>
      super.copyWith((message) => updates(message as MediaMenu)) as MediaMenu;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaMenu create() => MediaMenu._();
  @$core.override
  MediaMenu createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaMenu getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediaMenu>(create);
  static MediaMenu? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Item> get menus => $_getList(0);
}

class FilterItems_Filter extends $pb.GeneratedMessage {
  factory FilterItems_Filter({
    $core.String? name,
    $core.Iterable<Item>? items,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (items != null) result.items.addAll(items);
    return result;
  }

  FilterItems_Filter._();

  factory FilterItems_Filter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FilterItems_Filter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FilterItems.Filter',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPM<Item>(2, _omitFieldNames ? '' : 'items', subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterItems_Filter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterItems_Filter copyWith(void Function(FilterItems_Filter) updates) =>
      super.copyWith((message) => updates(message as FilterItems_Filter))
          as FilterItems_Filter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterItems_Filter create() => FilterItems_Filter._();
  @$core.override
  FilterItems_Filter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FilterItems_Filter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FilterItems_Filter>(create);
  static FilterItems_Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Item> get items => $_getList(1);
}

class FilterItems extends $pb.GeneratedMessage {
  factory FilterItems({
    $core.Iterable<FilterItems_Filter>? filters,
  }) {
    final result = create();
    if (filters != null) result.filters.addAll(filters);
    return result;
  }

  FilterItems._();

  factory FilterItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FilterItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FilterItems',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<FilterItems_Filter>(1, _omitFieldNames ? '' : 'filters',
        subBuilder: FilterItems_Filter.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterItems copyWith(void Function(FilterItems) updates) =>
      super.copyWith((message) => updates(message as FilterItems))
          as FilterItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterItems create() => FilterItems._();
  @$core.override
  FilterItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FilterItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FilterItems>(create);
  static FilterItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FilterItems_Filter> get filters => $_getList(0);
}

class Media_Credit extends $pb.GeneratedMessage {
  factory Media_Credit({
    $core.String? name,
    Media_CreditType? creditType,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (creditType != null) result.creditType = creditType;
    return result;
  }

  Media_Credit._();

  factory Media_Credit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Media_Credit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Media.Credit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aE<Media_CreditType>(2, _omitFieldNames ? '' : 'creditType',
        enumValues: Media_CreditType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media_Credit clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media_Credit copyWith(void Function(Media_Credit) updates) =>
      super.copyWith((message) => updates(message as Media_Credit))
          as Media_Credit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Media_Credit create() => Media_Credit._();
  @$core.override
  Media_Credit createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Media_Credit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Media_Credit>(create);
  static Media_Credit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  Media_CreditType get creditType => $_getN(1);
  @$pb.TagNumber(2)
  set creditType(Media_CreditType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreditType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreditType() => $_clearField(2);
}

/// media item
class Media extends $pb.GeneratedMessage {
  factory Media({
    $core.String? mediaId,
    Media_MediaType? mediaType,
    $core.String? name,
    $core.String? desc,
    $core.String? parentMediaId,
    $core.String? releaseDate,
    $fixnum.Int64? year,
    $core.Iterable<$core.String>? genres,
    $core.String? backdropUrl,
    $core.String? posterUrl,
    $core.String? originalName,
    $core.String? originalLanguage,
    $core.Iterable<Media_Credit>? credit,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
    $fixnum.Int64? playIndex,
    $fixnum.Int64? duration,
    $core.String? stillUrl,
  }) {
    final result = create();
    if (mediaId != null) result.mediaId = mediaId;
    if (mediaType != null) result.mediaType = mediaType;
    if (name != null) result.name = name;
    if (desc != null) result.desc = desc;
    if (parentMediaId != null) result.parentMediaId = parentMediaId;
    if (releaseDate != null) result.releaseDate = releaseDate;
    if (year != null) result.year = year;
    if (genres != null) result.genres.addAll(genres);
    if (backdropUrl != null) result.backdropUrl = backdropUrl;
    if (posterUrl != null) result.posterUrl = posterUrl;
    if (originalName != null) result.originalName = originalName;
    if (originalLanguage != null) result.originalLanguage = originalLanguage;
    if (credit != null) result.credit.addAll(credit);
    if (metadata != null) result.metadata.addEntries(metadata);
    if (playIndex != null) result.playIndex = playIndex;
    if (duration != null) result.duration = duration;
    if (stillUrl != null) result.stillUrl = stillUrl;
    return result;
  }

  Media._();

  factory Media.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Media.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Media',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mediaId')
    ..aE<Media_MediaType>(2, _omitFieldNames ? '' : 'mediaType',
        enumValues: Media_MediaType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..aOS(5, _omitFieldNames ? '' : 'parentMediaId')
    ..aOS(13, _omitFieldNames ? '' : 'releaseDate')
    ..a<$fixnum.Int64>(14, _omitFieldNames ? '' : 'year', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(15, _omitFieldNames ? '' : 'genres')
    ..aOS(16, _omitFieldNames ? '' : 'backdropUrl')
    ..aOS(17, _omitFieldNames ? '' : 'posterUrl')
    ..aOS(18, _omitFieldNames ? '' : 'originalName')
    ..aOS(19, _omitFieldNames ? '' : 'originalLanguage')
    ..pPM<Media_Credit>(20, _omitFieldNames ? '' : 'credit',
        subBuilder: Media_Credit.create)
    ..m<$core.String, $core.String>(21, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'Media.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('plugin'))
    ..a<$fixnum.Int64>(
        30, _omitFieldNames ? '' : 'playIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        31, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(32, _omitFieldNames ? '' : 'stillUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media copyWith(void Function(Media) updates) =>
      super.copyWith((message) => updates(message as Media)) as Media;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Media create() => Media._();
  @$core.override
  Media createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Media getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Media>(create);
  static Media? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaId() => $_clearField(1);

  @$pb.TagNumber(2)
  Media_MediaType get mediaType => $_getN(1);
  @$pb.TagNumber(2)
  set mediaType(Media_MediaType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMediaType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMediaType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get parentMediaId => $_getSZ(4);
  @$pb.TagNumber(5)
  set parentMediaId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParentMediaId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentMediaId() => $_clearField(5);

  /// media info
  @$pb.TagNumber(13)
  $core.String get releaseDate => $_getSZ(5);
  @$pb.TagNumber(13)
  set releaseDate($core.String value) => $_setString(5, value);
  @$pb.TagNumber(13)
  $core.bool hasReleaseDate() => $_has(5);
  @$pb.TagNumber(13)
  void clearReleaseDate() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get year => $_getI64(6);
  @$pb.TagNumber(14)
  set year($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(14)
  $core.bool hasYear() => $_has(6);
  @$pb.TagNumber(14)
  void clearYear() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<$core.String> get genres => $_getList(7);

  @$pb.TagNumber(16)
  $core.String get backdropUrl => $_getSZ(8);
  @$pb.TagNumber(16)
  set backdropUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(16)
  $core.bool hasBackdropUrl() => $_has(8);
  @$pb.TagNumber(16)
  void clearBackdropUrl() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get posterUrl => $_getSZ(9);
  @$pb.TagNumber(17)
  set posterUrl($core.String value) => $_setString(9, value);
  @$pb.TagNumber(17)
  $core.bool hasPosterUrl() => $_has(9);
  @$pb.TagNumber(17)
  void clearPosterUrl() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get originalName => $_getSZ(10);
  @$pb.TagNumber(18)
  set originalName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(18)
  $core.bool hasOriginalName() => $_has(10);
  @$pb.TagNumber(18)
  void clearOriginalName() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get originalLanguage => $_getSZ(11);
  @$pb.TagNumber(19)
  set originalLanguage($core.String value) => $_setString(11, value);
  @$pb.TagNumber(19)
  $core.bool hasOriginalLanguage() => $_has(11);
  @$pb.TagNumber(19)
  void clearOriginalLanguage() => $_clearField(19);

  @$pb.TagNumber(20)
  $pb.PbList<Media_Credit> get credit => $_getList(12);

  @$pb.TagNumber(21)
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(13);

  /// media play item
  @$pb.TagNumber(30)
  $fixnum.Int64 get playIndex => $_getI64(14);
  @$pb.TagNumber(30)
  set playIndex($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(30)
  $core.bool hasPlayIndex() => $_has(14);
  @$pb.TagNumber(30)
  void clearPlayIndex() => $_clearField(30);

  @$pb.TagNumber(31)
  $fixnum.Int64 get duration => $_getI64(15);
  @$pb.TagNumber(31)
  set duration($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(31)
  $core.bool hasDuration() => $_has(15);
  @$pb.TagNumber(31)
  void clearDuration() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get stillUrl => $_getSZ(16);
  @$pb.TagNumber(32)
  set stillUrl($core.String value) => $_setString(16, value);
  @$pb.TagNumber(32)
  $core.bool hasStillUrl() => $_has(16);
  @$pb.TagNumber(32)
  void clearStillUrl() => $_clearField(32);
}

class ListMediaInfoRequest extends $pb.GeneratedMessage {
  factory ListMediaInfoRequest({
    Item? menu,
    FilterItems? filters,
    $core.String? searchName,
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $core.String? pageKey,
  }) {
    final result = create();
    if (menu != null) result.menu = menu;
    if (filters != null) result.filters = filters;
    if (searchName != null) result.searchName = searchName;
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    if (pageKey != null) result.pageKey = pageKey;
    return result;
  }

  ListMediaInfoRequest._();

  factory ListMediaInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMediaInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMediaInfoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOM<Item>(1, _omitFieldNames ? '' : 'menu', subBuilder: Item.create)
    ..aOM<FilterItems>(2, _omitFieldNames ? '' : 'filters',
        subBuilder: FilterItems.create)
    ..aOS(3, _omitFieldNames ? '' : 'searchName')
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'page', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(12, _omitFieldNames ? '' : 'pageKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMediaInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMediaInfoRequest copyWith(void Function(ListMediaInfoRequest) updates) =>
      super.copyWith((message) => updates(message as ListMediaInfoRequest))
          as ListMediaInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMediaInfoRequest create() => ListMediaInfoRequest._();
  @$core.override
  ListMediaInfoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMediaInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMediaInfoRequest>(create);
  static ListMediaInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Item get menu => $_getN(0);
  @$pb.TagNumber(1)
  set menu(Item value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMenu() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenu() => $_clearField(1);
  @$pb.TagNumber(1)
  Item ensureMenu() => $_ensure(0);

  @$pb.TagNumber(2)
  FilterItems get filters => $_getN(1);
  @$pb.TagNumber(2)
  set filters(FilterItems value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFilters() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilters() => $_clearField(2);
  @$pb.TagNumber(2)
  FilterItems ensureFilters() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get searchName => $_getSZ(2);
  @$pb.TagNumber(3)
  set searchName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSearchName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSearchName() => $_clearField(3);

  @$pb.TagNumber(10)
  $fixnum.Int64 get page => $_getI64(3);
  @$pb.TagNumber(10)
  set page($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(10)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(10)
  void clearPage() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get pageSize => $_getI64(4);
  @$pb.TagNumber(11)
  set pageSize($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(11)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(11)
  void clearPageSize() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get pageKey => $_getSZ(5);
  @$pb.TagNumber(12)
  set pageKey($core.String value) => $_setString(5, value);
  @$pb.TagNumber(12)
  $core.bool hasPageKey() => $_has(5);
  @$pb.TagNumber(12)
  void clearPageKey() => $_clearField(12);
}

class ListMediaInfoResponse extends $pb.GeneratedMessage {
  factory ListMediaInfoResponse({
    $core.Iterable<Media>? mediaInfos,
    $core.bool? supportSearchName,
    FilterItems? allFilters,
    $core.String? nextPageKey,
  }) {
    final result = create();
    if (mediaInfos != null) result.mediaInfos.addAll(mediaInfos);
    if (supportSearchName != null) result.supportSearchName = supportSearchName;
    if (allFilters != null) result.allFilters = allFilters;
    if (nextPageKey != null) result.nextPageKey = nextPageKey;
    return result;
  }

  ListMediaInfoResponse._();

  factory ListMediaInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMediaInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMediaInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..pPM<Media>(1, _omitFieldNames ? '' : 'mediaInfos',
        subBuilder: Media.create)
    ..aOB(10, _omitFieldNames ? '' : 'supportSearchName')
    ..aOM<FilterItems>(11, _omitFieldNames ? '' : 'allFilters',
        subBuilder: FilterItems.create)
    ..aOS(12, _omitFieldNames ? '' : 'nextPageKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMediaInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMediaInfoResponse copyWith(
          void Function(ListMediaInfoResponse) updates) =>
      super.copyWith((message) => updates(message as ListMediaInfoResponse))
          as ListMediaInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMediaInfoResponse create() => ListMediaInfoResponse._();
  @$core.override
  ListMediaInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMediaInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMediaInfoResponse>(create);
  static ListMediaInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Media> get mediaInfos => $_getList(0);

  @$pb.TagNumber(10)
  $core.bool get supportSearchName => $_getBF(1);
  @$pb.TagNumber(10)
  set supportSearchName($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(10)
  $core.bool hasSupportSearchName() => $_has(1);
  @$pb.TagNumber(10)
  void clearSupportSearchName() => $_clearField(10);

  @$pb.TagNumber(11)
  FilterItems get allFilters => $_getN(2);
  @$pb.TagNumber(11)
  set allFilters(FilterItems value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAllFilters() => $_has(2);
  @$pb.TagNumber(11)
  void clearAllFilters() => $_clearField(11);
  @$pb.TagNumber(11)
  FilterItems ensureAllFilters() => $_ensure(2);

  @$pb.TagNumber(12)
  $core.String get nextPageKey => $_getSZ(3);
  @$pb.TagNumber(12)
  set nextPageKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(12)
  $core.bool hasNextPageKey() => $_has(3);
  @$pb.TagNumber(12)
  void clearNextPageKey() => $_clearField(12);
}

class GetMediaDetailRequest extends $pb.GeneratedMessage {
  factory GetMediaDetailRequest({
    $core.String? mediaInfoId,
  }) {
    final result = create();
    if (mediaInfoId != null) result.mediaInfoId = mediaInfoId;
    return result;
  }

  GetMediaDetailRequest._();

  factory GetMediaDetailRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMediaDetailRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMediaDetailRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mediaInfoId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMediaDetailRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMediaDetailRequest copyWith(
          void Function(GetMediaDetailRequest) updates) =>
      super.copyWith((message) => updates(message as GetMediaDetailRequest))
          as GetMediaDetailRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMediaDetailRequest create() => GetMediaDetailRequest._();
  @$core.override
  GetMediaDetailRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMediaDetailRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMediaDetailRequest>(create);
  static GetMediaDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaInfoId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaInfoId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaInfoId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaInfoId() => $_clearField(1);
}

class GetMediaDetailResponse extends $pb.GeneratedMessage {
  factory GetMediaDetailResponse({
    Media? mediaSeries,
    Media? mediaInfo,
    $core.Iterable<Media>? mediaItems,
  }) {
    final result = create();
    if (mediaSeries != null) result.mediaSeries = mediaSeries;
    if (mediaInfo != null) result.mediaInfo = mediaInfo;
    if (mediaItems != null) result.mediaItems.addAll(mediaItems);
    return result;
  }

  GetMediaDetailResponse._();

  factory GetMediaDetailResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMediaDetailResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMediaDetailResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOM<Media>(1, _omitFieldNames ? '' : 'mediaSeries',
        subBuilder: Media.create)
    ..aOM<Media>(2, _omitFieldNames ? '' : 'mediaInfo',
        subBuilder: Media.create)
    ..pPM<Media>(3, _omitFieldNames ? '' : 'mediaItems',
        subBuilder: Media.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMediaDetailResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMediaDetailResponse copyWith(
          void Function(GetMediaDetailResponse) updates) =>
      super.copyWith((message) => updates(message as GetMediaDetailResponse))
          as GetMediaDetailResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMediaDetailResponse create() => GetMediaDetailResponse._();
  @$core.override
  GetMediaDetailResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMediaDetailResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMediaDetailResponse>(create);
  static GetMediaDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Media get mediaSeries => $_getN(0);
  @$pb.TagNumber(1)
  set mediaSeries(Media value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaSeries() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaSeries() => $_clearField(1);
  @$pb.TagNumber(1)
  Media ensureMediaSeries() => $_ensure(0);

  @$pb.TagNumber(2)
  Media get mediaInfo => $_getN(1);
  @$pb.TagNumber(2)
  set mediaInfo(Media value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMediaInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMediaInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  Media ensureMediaInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<Media> get mediaItems => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
