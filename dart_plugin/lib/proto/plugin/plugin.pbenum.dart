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
class FileResource_Resolution extends $pb.ProtobufEnum {
  static const FileResource_Resolution ResolutionUNSPECIFIED = FileResource_Resolution._(0, _omitEnumNames ? '' : 'ResolutionUNSPECIFIED');
  static const FileResource_Resolution Original = FileResource_Resolution._(1, _omitEnumNames ? '' : 'Original');
  static const FileResource_Resolution SD = FileResource_Resolution._(2, _omitEnumNames ? '' : 'SD');
  static const FileResource_Resolution HD = FileResource_Resolution._(3, _omitEnumNames ? '' : 'HD');
  static const FileResource_Resolution FHD = FileResource_Resolution._(4, _omitEnumNames ? '' : 'FHD');
  static const FileResource_Resolution QHD = FileResource_Resolution._(5, _omitEnumNames ? '' : 'QHD');
  static const FileResource_Resolution UHD = FileResource_Resolution._(6, _omitEnumNames ? '' : 'UHD');

  static const $core.List<FileResource_Resolution> values = <FileResource_Resolution> [
    ResolutionUNSPECIFIED,
    Original,
    SD,
    HD,
    FHD,
    QHD,
    UHD,
  ];

  static final $core.Map<$core.int, FileResource_Resolution> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileResource_Resolution? valueOf($core.int value) => _byValue[value];

  const FileResource_Resolution._($core.int v, $core.String n) : super(v, n);
}

class FileResource_ResourceType extends $pb.ProtobufEnum {
  static const FileResource_ResourceType ResourceTypeUNSPECIFIED = FileResource_ResourceType._(0, _omitEnumNames ? '' : 'ResourceTypeUNSPECIFIED');
  static const FileResource_ResourceType Video = FileResource_ResourceType._(1, _omitEnumNames ? '' : 'Video');
  static const FileResource_ResourceType Subtitle = FileResource_ResourceType._(2, _omitEnumNames ? '' : 'Subtitle');
  static const FileResource_ResourceType Audio = FileResource_ResourceType._(3, _omitEnumNames ? '' : 'Audio');

  static const $core.List<FileResource_ResourceType> values = <FileResource_ResourceType> [
    ResourceTypeUNSPECIFIED,
    Video,
    Subtitle,
    Audio,
  ];

  static final $core.Map<$core.int, FileResource_ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileResource_ResourceType? valueOf($core.int value) => _byValue[value];

  const FileResource_ResourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
