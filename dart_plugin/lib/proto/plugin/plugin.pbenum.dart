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

import 'package:protobuf/protobuf.dart' as $pb;

class AuthType_FromDataType extends $pb.ProtobufEnum {
  static const AuthType_FromDataType UNSPECIFIED = AuthType_FromDataType._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const AuthType_FromDataType LOCALPATH = AuthType_FromDataType._(1, _omitEnumNames ? '' : 'LOCALPATH');
  static const AuthType_FromDataType HIDDEN = AuthType_FromDataType._(2, _omitEnumNames ? '' : 'HIDDEN');

  static const $core.List<AuthType_FromDataType> values = <AuthType_FromDataType> [
    UNSPECIFIED,
    LOCALPATH,
    HIDDEN,
  ];

  static final $core.Map<$core.int, AuthType_FromDataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthType_FromDataType? valueOf($core.int value) => _byValue[value];

  const AuthType_FromDataType._($core.int v, $core.String n) : super(v, n);
}

class FileEntry_FileType extends $pb.ProtobufEnum {
  static const FileEntry_FileType FileTypeUNSPECIFIED = FileEntry_FileType._(0, _omitEnumNames ? '' : 'FileTypeUNSPECIFIED');
  static const FileEntry_FileType FileTypeDir = FileEntry_FileType._(1, _omitEnumNames ? '' : 'FileTypeDir');
  static const FileEntry_FileType FileTypeFile = FileEntry_FileType._(2, _omitEnumNames ? '' : 'FileTypeFile');
  static const FileEntry_FileType FileTypeLink = FileEntry_FileType._(3, _omitEnumNames ? '' : 'FileTypeLink');

  static const $core.List<FileEntry_FileType> values = <FileEntry_FileType> [
    FileTypeUNSPECIFIED,
    FileTypeDir,
    FileTypeFile,
    FileTypeLink,
  ];

  static final $core.Map<$core.int, FileEntry_FileType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileEntry_FileType? valueOf($core.int value) => _byValue[value];

  const FileEntry_FileType._($core.int v, $core.String n) : super(v, n);
}

/// video display VideoResolution
class FileResource_VideoResolution extends $pb.ProtobufEnum {
  static const FileResource_VideoResolution Unspecified = FileResource_VideoResolution._(0, _omitEnumNames ? '' : 'Unspecified');
  static const FileResource_VideoResolution Original = FileResource_VideoResolution._(1, _omitEnumNames ? '' : 'Original');
  static const FileResource_VideoResolution SD = FileResource_VideoResolution._(2, _omitEnumNames ? '' : 'SD');
  static const FileResource_VideoResolution HD = FileResource_VideoResolution._(3, _omitEnumNames ? '' : 'HD');
  static const FileResource_VideoResolution FHD = FileResource_VideoResolution._(4, _omitEnumNames ? '' : 'FHD');
  static const FileResource_VideoResolution QHD = FileResource_VideoResolution._(5, _omitEnumNames ? '' : 'QHD');
  static const FileResource_VideoResolution UHD = FileResource_VideoResolution._(6, _omitEnumNames ? '' : 'UHD');

  static const $core.List<FileResource_VideoResolution> values = <FileResource_VideoResolution> [
    Unspecified,
    Original,
    SD,
    HD,
    FHD,
    QHD,
    UHD,
  ];

  static final $core.Map<$core.int, FileResource_VideoResolution> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileResource_VideoResolution? valueOf($core.int value) => _byValue[value];

  const FileResource_VideoResolution._($core.int v, $core.String n) : super(v, n);
}

class FileResource_ResourceType extends $pb.ProtobufEnum {
  static const FileResource_ResourceType MediaResourceTypeUNSPECIFIED = FileResource_ResourceType._(0, _omitEnumNames ? '' : 'MediaResourceTypeUNSPECIFIED');
  static const FileResource_ResourceType Video = FileResource_ResourceType._(1, _omitEnumNames ? '' : 'Video');
  static const FileResource_ResourceType Subtitle = FileResource_ResourceType._(2, _omitEnumNames ? '' : 'Subtitle');
  static const FileResource_ResourceType Audio = FileResource_ResourceType._(3, _omitEnumNames ? '' : 'Audio');

  static const $core.List<FileResource_ResourceType> values = <FileResource_ResourceType> [
    MediaResourceTypeUNSPECIFIED,
    Video,
    Subtitle,
    Audio,
  ];

  static final $core.Map<$core.int, FileResource_ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileResource_ResourceType? valueOf($core.int value) => _byValue[value];

  const FileResource_ResourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
