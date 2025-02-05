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

class AuthType_FormData extends $pb.GeneratedMessage {
  factory AuthType_FormData({
    $core.String? name,
    $core.String? label,
    $0.Any? value,
    AuthType_FromDataType? formDataType,
    $core.Iterable<AuthType_FormData>? enumFormData,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (label != null) {
      $result.label = label;
    }
    if (value != null) {
      $result.value = value;
    }
    if (formDataType != null) {
      $result.formDataType = formDataType;
    }
    if (enumFormData != null) {
      $result.enumFormData.addAll(enumFormData);
    }
    return $result;
  }
  AuthType_FormData._() : super();
  factory AuthType_FormData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthType_FormData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthType.FormData', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOM<$0.Any>(3, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..e<AuthType_FromDataType>(4, _omitFieldNames ? '' : 'formDataType', $pb.PbFieldType.OE, defaultOrMaker: AuthType_FromDataType.UNSPECIFIED, valueOf: AuthType_FromDataType.valueOf, enumValues: AuthType_FromDataType.values)
    ..pc<AuthType_FormData>(5, _omitFieldNames ? '' : 'enumFormData', $pb.PbFieldType.PM, subBuilder: AuthType_FormData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthType_FormData clone() => AuthType_FormData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthType_FormData copyWith(void Function(AuthType_FormData) updates) => super.copyWith((message) => updates(message as AuthType_FormData)) as AuthType_FormData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthType_FormData create() => AuthType_FormData._();
  AuthType_FormData createEmptyInstance() => create();
  static $pb.PbList<AuthType_FormData> createRepeated() => $pb.PbList<AuthType_FormData>();
  @$core.pragma('dart2js:noInline')
  static AuthType_FormData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthType_FormData>(create);
  static AuthType_FormData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);

  @$pb.TagNumber(3)
  $0.Any get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($0.Any v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Any ensureValue() => $_ensure(2);

  @$pb.TagNumber(4)
  AuthType_FromDataType get formDataType => $_getN(3);
  @$pb.TagNumber(4)
  set formDataType(AuthType_FromDataType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFormDataType() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormDataType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<AuthType_FormData> get enumFormData => $_getList(4);
}

class AuthType extends $pb.GeneratedMessage {
  factory AuthType({
    $core.bool? useForm,
    $core.Iterable<AuthType_FormData>? forms,
    $core.bool? useQrcode,
    $core.List<$core.int>? qrcodeImage,
    $fixnum.Int64? qrcodeExpireTime,
    $core.bool? useOauth,
    $core.String? oauthUrl,
    $core.List<$core.int>? oauthCallbackData,
  }) {
    final $result = create();
    if (useForm != null) {
      $result.useForm = useForm;
    }
    if (forms != null) {
      $result.forms.addAll(forms);
    }
    if (useQrcode != null) {
      $result.useQrcode = useQrcode;
    }
    if (qrcodeImage != null) {
      $result.qrcodeImage = qrcodeImage;
    }
    if (qrcodeExpireTime != null) {
      $result.qrcodeExpireTime = qrcodeExpireTime;
    }
    if (useOauth != null) {
      $result.useOauth = useOauth;
    }
    if (oauthUrl != null) {
      $result.oauthUrl = oauthUrl;
    }
    if (oauthCallbackData != null) {
      $result.oauthCallbackData = oauthCallbackData;
    }
    return $result;
  }
  AuthType._() : super();
  factory AuthType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthType', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'useForm')
    ..pc<AuthType_FormData>(2, _omitFieldNames ? '' : 'forms', $pb.PbFieldType.PM, subBuilder: AuthType_FormData.create)
    ..aOB(3, _omitFieldNames ? '' : 'useQrcode')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'qrcodeImage', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'qrcodeExpireTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(6, _omitFieldNames ? '' : 'useOauth')
    ..aOS(7, _omitFieldNames ? '' : 'oauthUrl')
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'oauthCallbackData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthType clone() => AuthType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthType copyWith(void Function(AuthType) updates) => super.copyWith((message) => updates(message as AuthType)) as AuthType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthType create() => AuthType._();
  AuthType createEmptyInstance() => create();
  static $pb.PbList<AuthType> createRepeated() => $pb.PbList<AuthType>();
  @$core.pragma('dart2js:noInline')
  static AuthType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthType>(create);
  static AuthType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get useForm => $_getBF(0);
  @$pb.TagNumber(1)
  set useForm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUseForm() => $_has(0);
  @$pb.TagNumber(1)
  void clearUseForm() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AuthType_FormData> get forms => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get useQrcode => $_getBF(2);
  @$pb.TagNumber(3)
  set useQrcode($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUseQrcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearUseQrcode() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get qrcodeImage => $_getN(3);
  @$pb.TagNumber(4)
  set qrcodeImage($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQrcodeImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearQrcodeImage() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get qrcodeExpireTime => $_getI64(4);
  @$pb.TagNumber(5)
  set qrcodeExpireTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQrcodeExpireTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearQrcodeExpireTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get useOauth => $_getBF(5);
  @$pb.TagNumber(6)
  set useOauth($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUseOauth() => $_has(5);
  @$pb.TagNumber(6)
  void clearUseOauth() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get oauthUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set oauthUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOauthUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearOauthUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get oauthCallbackData => $_getN(7);
  @$pb.TagNumber(8)
  set oauthCallbackData($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOauthCallbackData() => $_has(7);
  @$pb.TagNumber(8)
  void clearOauthCallbackData() => clearField(8);
}

class FileEntry extends $pb.GeneratedMessage {
  factory FileEntry({
    $core.String? name,
    FileEntry_FileType? fileType,
    $fixnum.Int64? size,
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
    ..e<FileEntry_FileType>(2, _omitFieldNames ? '' : 'fileType', $pb.PbFieldType.OE, protoName: 'fileType', defaultOrMaker: FileEntry_FileType.UNSPECIFIED, valueOf: FileEntry_FileType.valueOf, enumValues: FileEntry_FileType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
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

  @$pb.TagNumber(10)
  $fixnum.Int64 get createdTime => $_getI64(3);
  @$pb.TagNumber(10)
  set createdTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(10)
  void clearCreatedTime() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get modifiedTime => $_getI64(4);
  @$pb.TagNumber(11)
  set modifiedTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(11)
  $core.bool hasModifiedTime() => $_has(4);
  @$pb.TagNumber(11)
  void clearModifiedTime() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get accessedTime => $_getI64(5);
  @$pb.TagNumber(12)
  set accessedTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(12)
  $core.bool hasAccessedTime() => $_has(5);
  @$pb.TagNumber(12)
  void clearAccessedTime() => clearField(12);
}

class DirEntry extends $pb.GeneratedMessage {
  factory DirEntry({
    $core.Iterable<FileEntry>? fileEntries,
  }) {
    final $result = create();
    if (fileEntries != null) {
      $result.fileEntries.addAll(fileEntries);
    }
    return $result;
  }
  DirEntry._() : super();
  factory DirEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DirEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'), createEmptyInstance: create)
    ..pc<FileEntry>(1, _omitFieldNames ? '' : 'fileEntries', $pb.PbFieldType.PM, subBuilder: FileEntry.create)
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
}

class FileResource_FileResourceData extends $pb.GeneratedMessage {
  factory FileResource_FileResourceData({
    $core.String? url,
    FileResource_VideoResolution? videoResolution,
    $fixnum.Int64? expireTime,
    FileResource_ResourceType? resourceType,
    $core.String? title,
    $core.Map<$core.String, $core.String>? header,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (videoResolution != null) {
      $result.videoResolution = videoResolution;
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
    ..e<FileResource_VideoResolution>(2, _omitFieldNames ? '' : 'videoResolution', $pb.PbFieldType.OE, defaultOrMaker: FileResource_VideoResolution.Unspecified, valueOf: FileResource_VideoResolution.valueOf, enumValues: FileResource_VideoResolution.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'expireTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<FileResource_ResourceType>(4, _omitFieldNames ? '' : 'resourceType', $pb.PbFieldType.OE, defaultOrMaker: FileResource_ResourceType.MediaResourceTypeUNSPECIFIED, valueOf: FileResource_ResourceType.valueOf, enumValues: FileResource_ResourceType.values)
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
  FileResource_VideoResolution get videoResolution => $_getN(1);
  @$pb.TagNumber(2)
  set videoResolution(FileResource_VideoResolution v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVideoResolution() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoResolution() => clearField(2);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
