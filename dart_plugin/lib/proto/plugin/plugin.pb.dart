//
//  Generated code. Do not modify.
//  source: plugin/plugin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $0;
import 'plugin.pbenum.dart';

export 'plugin.pbenum.dart';

class Auth_FormData_FormItem extends $pb.GeneratedMessage {
  factory Auth_FormData_FormItem({
    $core.String? name,
    $0.Any? value,
    $core.Iterable<Auth_FormData_FormItem>? enumValues,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    if (enumValues != null) {
      $result.enumValues.addAll(enumValues);
    }
    return $result;
  }
  Auth_FormData_FormItem._() : super();
  factory Auth_FormData_FormItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_FormData_FormItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Auth.FormData.FormItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Any>(2, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..pc<Auth_FormData_FormItem>(3, _omitFieldNames ? '' : 'enumValues', $pb.PbFieldType.PM, subBuilder: Auth_FormData_FormItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auth_FormData_FormItem clone() => Auth_FormData_FormItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auth_FormData_FormItem copyWith(void Function(Auth_FormData_FormItem) updates) => super.copyWith((message) => updates(message as Auth_FormData_FormItem)) as Auth_FormData_FormItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_FormData_FormItem create() => Auth_FormData_FormItem._();
  Auth_FormData_FormItem createEmptyInstance() => create();
  static $pb.PbList<Auth_FormData_FormItem> createRepeated() => $pb.PbList<Auth_FormData_FormItem>();
  @$core.pragma('dart2js:noInline')
  static Auth_FormData_FormItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_FormData_FormItem>(create);
  static Auth_FormData_FormItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.Any get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($0.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Any ensureValue() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Auth_FormData_FormItem> get enumValues => $_getList(2);
}

/// form data input
class Auth_FormData extends $pb.GeneratedMessage {
  factory Auth_FormData({
    $core.Iterable<Auth_FormData_FormItem>? formItems,
  }) {
    final $result = create();
    if (formItems != null) {
      $result.formItems.addAll(formItems);
    }
    return $result;
  }
  Auth_FormData._() : super();
  factory Auth_FormData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_FormData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Auth.FormData', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..pc<Auth_FormData_FormItem>(1, _omitFieldNames ? '' : 'formItems', $pb.PbFieldType.PM, subBuilder: Auth_FormData_FormItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auth_FormData clone() => Auth_FormData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auth_FormData copyWith(void Function(Auth_FormData) updates) => super.copyWith((message) => updates(message as Auth_FormData)) as Auth_FormData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_FormData create() => Auth_FormData._();
  Auth_FormData createEmptyInstance() => create();
  static $pb.PbList<Auth_FormData> createRepeated() => $pb.PbList<Auth_FormData>();
  @$core.pragma('dart2js:noInline')
  static Auth_FormData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_FormData>(create);
  static Auth_FormData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Auth_FormData_FormItem> get formItems => $_getList(0);
}

class Auth_ScanQrcode extends $pb.GeneratedMessage {
  factory Auth_ScanQrcode({
    $core.List<$core.int>? qrcodeImage,
    $core.String? qrcodeImageParam,
    $fixnum.Int64? qrcodeExpireTime,
  }) {
    final $result = create();
    if (qrcodeImage != null) {
      $result.qrcodeImage = qrcodeImage;
    }
    if (qrcodeImageParam != null) {
      $result.qrcodeImageParam = qrcodeImageParam;
    }
    if (qrcodeExpireTime != null) {
      $result.qrcodeExpireTime = qrcodeExpireTime;
    }
    return $result;
  }
  Auth_ScanQrcode._() : super();
  factory Auth_ScanQrcode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_ScanQrcode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Auth.ScanQrcode', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'qrcodeImage', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'qrcodeImageParam')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'qrcodeExpireTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auth_ScanQrcode clone() => Auth_ScanQrcode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auth_ScanQrcode copyWith(void Function(Auth_ScanQrcode) updates) => super.copyWith((message) => updates(message as Auth_ScanQrcode)) as Auth_ScanQrcode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_ScanQrcode create() => Auth_ScanQrcode._();
  Auth_ScanQrcode createEmptyInstance() => create();
  static $pb.PbList<Auth_ScanQrcode> createRepeated() => $pb.PbList<Auth_ScanQrcode>();
  @$core.pragma('dart2js:noInline')
  static Auth_ScanQrcode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_ScanQrcode>(create);
  static Auth_ScanQrcode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get qrcodeImage => $_getN(0);
  @$pb.TagNumber(1)
  set qrcodeImage($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQrcodeImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearQrcodeImage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get qrcodeImageParam => $_getSZ(1);
  @$pb.TagNumber(2)
  set qrcodeImageParam($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQrcodeImageParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearQrcodeImageParam() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get qrcodeExpireTime => $_getI64(2);
  @$pb.TagNumber(3)
  set qrcodeExpireTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQrcodeExpireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearQrcodeExpireTime() => clearField(3);
}

class Auth_Callback extends $pb.GeneratedMessage {
  factory Auth_Callback({
    $core.String? callbackUrl,
    $core.String? callbackUrlParam,
    $core.String? callbackUrlData,
  }) {
    final $result = create();
    if (callbackUrl != null) {
      $result.callbackUrl = callbackUrl;
    }
    if (callbackUrlParam != null) {
      $result.callbackUrlParam = callbackUrlParam;
    }
    if (callbackUrlData != null) {
      $result.callbackUrlData = callbackUrlData;
    }
    return $result;
  }
  Auth_Callback._() : super();
  factory Auth_Callback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_Callback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Auth.Callback', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'callbackUrl')
    ..aOS(2, _omitFieldNames ? '' : 'callbackUrlParam')
    ..aOS(3, _omitFieldNames ? '' : 'callbackUrlData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auth_Callback clone() => Auth_Callback()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auth_Callback copyWith(void Function(Auth_Callback) updates) => super.copyWith((message) => updates(message as Auth_Callback)) as Auth_Callback;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_Callback create() => Auth_Callback._();
  Auth_Callback createEmptyInstance() => create();
  static $pb.PbList<Auth_Callback> createRepeated() => $pb.PbList<Auth_Callback>();
  @$core.pragma('dart2js:noInline')
  static Auth_Callback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_Callback>(create);
  static Auth_Callback? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get callbackUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set callbackUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallbackUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallbackUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get callbackUrlParam => $_getSZ(1);
  @$pb.TagNumber(2)
  set callbackUrlParam($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallbackUrlParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallbackUrlParam() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get callbackUrlData => $_getSZ(2);
  @$pb.TagNumber(3)
  set callbackUrlData($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallbackUrlData() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallbackUrlData() => clearField(3);
}

class Auth extends $pb.GeneratedMessage {
  factory Auth({
    $core.Iterable<$0.Any>? authMethods,
  }) {
    final $result = create();
    if (authMethods != null) {
      $result.authMethods.addAll(authMethods);
    }
    return $result;
  }
  Auth._() : super();
  factory Auth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Auth', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..pc<$0.Any>(1, _omitFieldNames ? '' : 'authMethods', $pb.PbFieldType.PM, subBuilder: $0.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auth clone() => Auth()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auth copyWith(void Function(Auth) updates) => super.copyWith((message) => updates(message as Auth)) as Auth;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth create() => Auth._();
  Auth createEmptyInstance() => create();
  static $pb.PbList<Auth> createRepeated() => $pb.PbList<Auth>();
  @$core.pragma('dart2js:noInline')
  static Auth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth>(create);
  static Auth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Any> get authMethods => $_getList(0);
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
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (fileType != null) {
      $result.fileType = fileType;
    }
    if (size != null) {
      $result.size = size;
    }
    if (rawData != null) {
      $result.rawData = rawData;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (modifiedTime != null) {
      $result.modifiedTime = modifiedTime;
    }
    if (accessedTime != null) {
      $result.accessedTime = accessedTime;
    }
    return $result;
  }
  FileEntry._() : super();
  factory FileEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..e<FileEntry_FileType>(2, _omitFieldNames ? '' : 'fileType', $pb.PbFieldType.OE, defaultOrMaker: FileEntry_FileType.FileTypeUNSPECIFIED, valueOf: FileEntry_FileType.valueOf, enumValues: FileEntry_FileType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'rawData', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'createdTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'modifiedTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(12, _omitFieldNames ? '' : 'accessedTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileEntry clone() => FileEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileEntry copyWith(void Function(FileEntry) updates) => super.copyWith((message) => updates(message as FileEntry)) as FileEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileEntry create() => FileEntry._();
  FileEntry createEmptyInstance() => create();
  static $pb.PbList<FileEntry> createRepeated() => $pb.PbList<FileEntry>();
  @$core.pragma('dart2js:noInline')
  static FileEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileEntry>(create);
  static FileEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  FileEntry_FileType get fileType => $_getN(1);
  @$pb.TagNumber(2)
  set fileType(FileEntry_FileType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get rawData => $_getN(3);
  @$pb.TagNumber(4)
  set rawData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRawData() => $_has(3);
  @$pb.TagNumber(4)
  void clearRawData() => clearField(4);

  @$pb.TagNumber(10)
  $fixnum.Int64 get createdTime => $_getI64(4);
  @$pb.TagNumber(10)
  set createdTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedTime() => $_has(4);
  @$pb.TagNumber(10)
  void clearCreatedTime() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get modifiedTime => $_getI64(5);
  @$pb.TagNumber(11)
  set modifiedTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(11)
  $core.bool hasModifiedTime() => $_has(5);
  @$pb.TagNumber(11)
  void clearModifiedTime() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get accessedTime => $_getI64(6);
  @$pb.TagNumber(12)
  set accessedTime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(12)
  $core.bool hasAccessedTime() => $_has(6);
  @$pb.TagNumber(12)
  void clearAccessedTime() => clearField(12);
}

class DirEntry extends $pb.GeneratedMessage {
  factory DirEntry({
    $core.Iterable<FileEntry>? fileEntries,
    $core.String? dirEntryKey,
  }) {
    final $result = create();
    if (fileEntries != null) {
      $result.fileEntries.addAll(fileEntries);
    }
    if (dirEntryKey != null) {
      $result.dirEntryKey = dirEntryKey;
    }
    return $result;
  }
  DirEntry._() : super();
  factory DirEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DirEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..pc<FileEntry>(1, _omitFieldNames ? '' : 'fileEntries', $pb.PbFieldType.PM, subBuilder: FileEntry.create)
    ..aOS(10, _omitFieldNames ? '' : 'dirEntryKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirEntry clone() => DirEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirEntry copyWith(void Function(DirEntry) updates) => super.copyWith((message) => updates(message as DirEntry)) as DirEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DirEntry create() => DirEntry._();
  DirEntry createEmptyInstance() => create();
  static $pb.PbList<DirEntry> createRepeated() => $pb.PbList<DirEntry>();
  @$core.pragma('dart2js:noInline')
  static DirEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirEntry>(create);
  static DirEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FileEntry> get fileEntries => $_getList(0);

  @$pb.TagNumber(10)
  $core.String get dirEntryKey => $_getSZ(1);
  @$pb.TagNumber(10)
  set dirEntryKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasDirEntryKey() => $_has(1);
  @$pb.TagNumber(10)
  void clearDirEntryKey() => clearField(10);
}

class GetDirEntryRequest extends $pb.GeneratedMessage {
  factory GetDirEntryRequest({
    $core.String? path,
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $core.String? dirEntryKey,
    FileEntry? fileEntry,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (dirEntryKey != null) {
      $result.dirEntryKey = dirEntryKey;
    }
    if (fileEntry != null) {
      $result.fileEntry = fileEntry;
    }
    return $result;
  }
  GetDirEntryRequest._() : super();
  factory GetDirEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDirEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDirEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'page', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'dirEntryKey')
    ..aOM<FileEntry>(11, _omitFieldNames ? '' : 'fileEntry', subBuilder: FileEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDirEntryRequest clone() => GetDirEntryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDirEntryRequest copyWith(void Function(GetDirEntryRequest) updates) => super.copyWith((message) => updates(message as GetDirEntryRequest)) as GetDirEntryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDirEntryRequest create() => GetDirEntryRequest._();
  GetDirEntryRequest createEmptyInstance() => create();
  static $pb.PbList<GetDirEntryRequest> createRepeated() => $pb.PbList<GetDirEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDirEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDirEntryRequest>(create);
  static GetDirEntryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(3)
  set page($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(3)
  void clearPage() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get pageSize => $_getI64(2);
  @$pb.TagNumber(4)
  set pageSize($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(4)
  void clearPageSize() => clearField(4);

  @$pb.TagNumber(10)
  $core.String get dirEntryKey => $_getSZ(3);
  @$pb.TagNumber(10)
  set dirEntryKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(10)
  $core.bool hasDirEntryKey() => $_has(3);
  @$pb.TagNumber(10)
  void clearDirEntryKey() => clearField(10);

  @$pb.TagNumber(11)
  FileEntry get fileEntry => $_getN(4);
  @$pb.TagNumber(11)
  set fileEntry(FileEntry v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasFileEntry() => $_has(4);
  @$pb.TagNumber(11)
  void clearFileEntry() => clearField(11);
  @$pb.TagNumber(11)
  FileEntry ensureFileEntry() => $_ensure(4);
}

class GetFileResourceRequest extends $pb.GeneratedMessage {
  factory GetFileResourceRequest({
    $core.String? filePath,
    FileEntry? fileEntry,
  }) {
    final $result = create();
    if (filePath != null) {
      $result.filePath = filePath;
    }
    if (fileEntry != null) {
      $result.fileEntry = fileEntry;
    }
    return $result;
  }
  GetFileResourceRequest._() : super();
  factory GetFileResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFileResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filePath')
    ..aOM<FileEntry>(10, _omitFieldNames ? '' : 'fileEntry', subBuilder: FileEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileResourceRequest clone() => GetFileResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileResourceRequest copyWith(void Function(GetFileResourceRequest) updates) => super.copyWith((message) => updates(message as GetFileResourceRequest)) as GetFileResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileResourceRequest create() => GetFileResourceRequest._();
  GetFileResourceRequest createEmptyInstance() => create();
  static $pb.PbList<GetFileResourceRequest> createRepeated() => $pb.PbList<GetFileResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFileResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileResourceRequest>(create);
  static GetFileResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set filePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilePath() => clearField(1);

  @$pb.TagNumber(10)
  FileEntry get fileEntry => $_getN(1);
  @$pb.TagNumber(10)
  set fileEntry(FileEntry v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasFileEntry() => $_has(1);
  @$pb.TagNumber(10)
  void clearFileEntry() => clearField(10);
  @$pb.TagNumber(10)
  FileEntry ensureFileEntry() => $_ensure(1);
}

class FileResource_FileResourceData extends $pb.GeneratedMessage {
  factory FileResource_FileResourceData({
    $core.String? url,
    FileResource_Resolution? resolution,
    $fixnum.Int64? expireTime,
    FileResource_ResourceType? resourceType,
    $core.String? title,
    $core.Map<$core.String, $core.String>? header,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (resolution != null) {
      $result.resolution = resolution;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    if (resourceType != null) {
      $result.resourceType = resourceType;
    }
    if (title != null) {
      $result.title = title;
    }
    if (header != null) {
      $result.header.addAll(header);
    }
    return $result;
  }
  FileResource_FileResourceData._() : super();
  factory FileResource_FileResourceData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileResource_FileResourceData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileResource.FileResourceData', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..e<FileResource_Resolution>(2, _omitFieldNames ? '' : 'resolution', $pb.PbFieldType.OE, defaultOrMaker: FileResource_Resolution.ResolutionUNSPECIFIED, valueOf: FileResource_Resolution.valueOf, enumValues: FileResource_Resolution.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'expireTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<FileResource_ResourceType>(4, _omitFieldNames ? '' : 'resourceType', $pb.PbFieldType.OE, defaultOrMaker: FileResource_ResourceType.ResourceTypeUNSPECIFIED, valueOf: FileResource_ResourceType.valueOf, enumValues: FileResource_ResourceType.values)
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'header', entryClassName: 'FileResource.FileResourceData.HeaderEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('plugin'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileResource_FileResourceData clone() => FileResource_FileResourceData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileResource_FileResourceData copyWith(void Function(FileResource_FileResourceData) updates) => super.copyWith((message) => updates(message as FileResource_FileResourceData)) as FileResource_FileResourceData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileResource_FileResourceData create() => FileResource_FileResourceData._();
  FileResource_FileResourceData createEmptyInstance() => create();
  static $pb.PbList<FileResource_FileResourceData> createRepeated() => $pb.PbList<FileResource_FileResourceData>();
  @$core.pragma('dart2js:noInline')
  static FileResource_FileResourceData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileResource_FileResourceData>(create);
  static FileResource_FileResourceData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  FileResource_Resolution get resolution => $_getN(1);
  @$pb.TagNumber(2)
  set resolution(FileResource_Resolution v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResolution() => $_has(1);
  @$pb.TagNumber(2)
  void clearResolution() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expireTime => $_getI64(2);
  @$pb.TagNumber(3)
  set expireTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireTime() => clearField(3);

  @$pb.TagNumber(4)
  FileResource_ResourceType get resourceType => $_getN(3);
  @$pb.TagNumber(4)
  set resourceType(FileResource_ResourceType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResourceType() => $_has(3);
  @$pb.TagNumber(4)
  void clearResourceType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get header => $_getMap(5);
}

class FileResource extends $pb.GeneratedMessage {
  factory FileResource({
    $core.Iterable<FileResource_FileResourceData>? fileResourceData,
  }) {
    final $result = create();
    if (fileResourceData != null) {
      $result.fileResourceData.addAll(fileResourceData);
    }
    return $result;
  }
  FileResource._() : super();
  factory FileResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..pc<FileResource_FileResourceData>(1, _omitFieldNames ? '' : 'fileResourceData', $pb.PbFieldType.PM, subBuilder: FileResource_FileResourceData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileResource clone() => FileResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileResource copyWith(void Function(FileResource) updates) => super.copyWith((message) => updates(message as FileResource)) as FileResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileResource create() => FileResource._();
  FileResource createEmptyInstance() => create();
  static $pb.PbList<FileResource> createRepeated() => $pb.PbList<FileResource>();
  @$core.pragma('dart2js:noInline')
  static FileResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileResource>(create);
  static FileResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FileResource_FileResourceData> get fileResourceData => $_getList(0);
}

class AuthData extends $pb.GeneratedMessage {
  factory AuthData({
    $core.List<$core.int>? authDataBytes,
    $fixnum.Int64? authDataExpiredTime,
  }) {
    final $result = create();
    if (authDataBytes != null) {
      $result.authDataBytes = authDataBytes;
    }
    if (authDataExpiredTime != null) {
      $result.authDataExpiredTime = authDataExpiredTime;
    }
    return $result;
  }
  AuthData._() : super();
  factory AuthData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthData', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'authDataBytes', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'authDataExpiredTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthData clone() => AuthData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthData copyWith(void Function(AuthData) updates) => super.copyWith((message) => updates(message as AuthData)) as AuthData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthData create() => AuthData._();
  AuthData createEmptyInstance() => create();
  static $pb.PbList<AuthData> createRepeated() => $pb.PbList<AuthData>();
  @$core.pragma('dart2js:noInline')
  static AuthData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthData>(create);
  static AuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get authDataBytes => $_getN(0);
  @$pb.TagNumber(1)
  set authDataBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthDataBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthDataBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get authDataExpiredTime => $_getI64(1);
  @$pb.TagNumber(2)
  set authDataExpiredTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthDataExpiredTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthDataExpiredTime() => clearField(2);
}

class AuthRefresh extends $pb.GeneratedMessage {
  factory AuthRefresh({
    AuthData? authData,
  }) {
    final $result = create();
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  AuthRefresh._() : super();
  factory AuthRefresh.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRefresh.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRefresh', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOM<AuthData>(1, _omitFieldNames ? '' : 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRefresh clone() => AuthRefresh()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRefresh copyWith(void Function(AuthRefresh) updates) => super.copyWith((message) => updates(message as AuthRefresh)) as AuthRefresh;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRefresh create() => AuthRefresh._();
  AuthRefresh createEmptyInstance() => create();
  static $pb.PbList<AuthRefresh> createRepeated() => $pb.PbList<AuthRefresh>();
  @$core.pragma('dart2js:noInline')
  static AuthRefresh getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRefresh>(create);
  static AuthRefresh? _defaultInstance;

  @$pb.TagNumber(1)
  AuthData get authData => $_getN(0);
  @$pb.TagNumber(1)
  set authData(AuthData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthData() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthData() => clearField(1);
  @$pb.TagNumber(1)
  AuthData ensureAuthData() => $_ensure(0);
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
    final $result = create();
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (clientSecret != null) {
      $result.clientSecret = clientSecret;
    }
    if (redirectUri != null) {
      $result.redirectUri = redirectUri;
    }
    if (scopes != null) {
      $result.scopes.addAll(scopes);
    }
    if (authUrl != null) {
      $result.authUrl = authUrl;
    }
    if (qrcodeUrl != null) {
      $result.qrcodeUrl = qrcodeUrl;
    }
    if (tokenUrl != null) {
      $result.tokenUrl = tokenUrl;
    }
    if (tokenReqType != null) {
      $result.tokenReqType = tokenReqType;
    }
    return $result;
  }
  OauthConfig._() : super();
  factory OauthConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OauthConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OauthConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientId')
    ..aOS(2, _omitFieldNames ? '' : 'clientSecret')
    ..aOS(3, _omitFieldNames ? '' : 'redirectUri')
    ..pPS(4, _omitFieldNames ? '' : 'scopes')
    ..aOS(5, _omitFieldNames ? '' : 'authUrl')
    ..aOS(6, _omitFieldNames ? '' : 'qrcodeUrl')
    ..aOS(10, _omitFieldNames ? '' : 'tokenUrl')
    ..aOS(11, _omitFieldNames ? '' : 'tokenReqType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OauthConfig clone() => OauthConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OauthConfig copyWith(void Function(OauthConfig) updates) => super.copyWith((message) => updates(message as OauthConfig)) as OauthConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OauthConfig create() => OauthConfig._();
  OauthConfig createEmptyInstance() => create();
  static $pb.PbList<OauthConfig> createRepeated() => $pb.PbList<OauthConfig>();
  @$core.pragma('dart2js:noInline')
  static OauthConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OauthConfig>(create);
  static OauthConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientSecret => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientSecret($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientSecret() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get redirectUri => $_getSZ(2);
  @$pb.TagNumber(3)
  set redirectUri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRedirectUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedirectUri() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get scopes => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get authUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set authUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get qrcodeUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set qrcodeUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQrcodeUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearQrcodeUrl() => clearField(6);

  @$pb.TagNumber(10)
  $core.String get tokenUrl => $_getSZ(6);
  @$pb.TagNumber(10)
  set tokenUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasTokenUrl() => $_has(6);
  @$pb.TagNumber(10)
  void clearTokenUrl() => clearField(10);

  /// json POST application/json
  /// form POST application/x-www-form-urlencoded
  /// uri GET
  @$pb.TagNumber(11)
  $core.String get tokenReqType => $_getSZ(7);
  @$pb.TagNumber(11)
  set tokenReqType($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasTokenReqType() => $_has(7);
  @$pb.TagNumber(11)
  void clearTokenReqType() => clearField(11);
}

class Token extends $pb.GeneratedMessage {
  factory Token({
    $core.String? tokenType,
    $core.String? accessToken,
    $core.String? refreshToken,
    $fixnum.Int64? expiresIn,
  }) {
    final $result = create();
    if (tokenType != null) {
      $result.tokenType = tokenType;
    }
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (expiresIn != null) {
      $result.expiresIn = expiresIn;
    }
    return $result;
  }
  Token._() : super();
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Token', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tokenType')
    ..aOS(2, _omitFieldNames ? '' : 'accessToken')
    ..aOS(3, _omitFieldNames ? '' : 'refreshToken')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'expiresIn', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenType => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expiresIn => $_getI64(3);
  @$pb.TagNumber(4)
  set expiresIn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiresIn() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresIn() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
