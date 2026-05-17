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

import 'package:protobuf/protobuf.dart' as $pb;

class PluginType extends $pb.ProtobufEnum {
  static const PluginType PLUGIN_TYPE_UNSPECIFIED =
      PluginType._(0, _omitEnumNames ? '' : 'PLUGIN_TYPE_UNSPECIFIED');
  static const PluginType PLUGIN_TYPE_DRIVER =
      PluginType._(1, _omitEnumNames ? '' : 'PLUGIN_TYPE_DRIVER');
  static const PluginType PLUGIN_TYPE_MEDIA =
      PluginType._(2, _omitEnumNames ? '' : 'PLUGIN_TYPE_MEDIA');

  static const $core.List<PluginType> values = <PluginType>[
    PLUGIN_TYPE_UNSPECIFIED,
    PLUGIN_TYPE_DRIVER,
    PLUGIN_TYPE_MEDIA,
  ];

  static final $core.List<PluginType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PluginType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PluginType._(super.value, super.name);
}

class FileEntry_FileType extends $pb.ProtobufEnum {
  static const FileEntry_FileType FileTypeUNSPECIFIED =
      FileEntry_FileType._(0, _omitEnumNames ? '' : 'FileTypeUNSPECIFIED');
  static const FileEntry_FileType FileTypeDir =
      FileEntry_FileType._(1, _omitEnumNames ? '' : 'FileTypeDir');
  static const FileEntry_FileType FileTypeFile =
      FileEntry_FileType._(2, _omitEnumNames ? '' : 'FileTypeFile');
  static const FileEntry_FileType FileTypeLink =
      FileEntry_FileType._(3, _omitEnumNames ? '' : 'FileTypeLink');

  static const $core.List<FileEntry_FileType> values = <FileEntry_FileType>[
    FileTypeUNSPECIFIED,
    FileTypeDir,
    FileTypeFile,
    FileTypeLink,
  ];

  static final $core.List<FileEntry_FileType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FileEntry_FileType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileEntry_FileType._(super.value, super.name);
}

/// video display VideoResolution
class FileResource_Resolution extends $pb.ProtobufEnum {
  static const FileResource_Resolution ResolutionUNSPECIFIED =
      FileResource_Resolution._(
          0, _omitEnumNames ? '' : 'ResolutionUNSPECIFIED');
  static const FileResource_Resolution Original =
      FileResource_Resolution._(1, _omitEnumNames ? '' : 'Original');
  static const FileResource_Resolution LD =
      FileResource_Resolution._(2, _omitEnumNames ? '' : 'LD');
  static const FileResource_Resolution SD =
      FileResource_Resolution._(3, _omitEnumNames ? '' : 'SD');
  static const FileResource_Resolution HD =
      FileResource_Resolution._(4, _omitEnumNames ? '' : 'HD');
  static const FileResource_Resolution FHD =
      FileResource_Resolution._(5, _omitEnumNames ? '' : 'FHD');
  static const FileResource_Resolution QHD =
      FileResource_Resolution._(6, _omitEnumNames ? '' : 'QHD');
  static const FileResource_Resolution UHD =
      FileResource_Resolution._(7, _omitEnumNames ? '' : 'UHD');

  static const $core.List<FileResource_Resolution> values =
      <FileResource_Resolution>[
    ResolutionUNSPECIFIED,
    Original,
    LD,
    SD,
    HD,
    FHD,
    QHD,
    UHD,
  ];

  static final $core.List<FileResource_Resolution?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static FileResource_Resolution? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileResource_Resolution._(super.value, super.name);
}

class FileResource_ResourceType extends $pb.ProtobufEnum {
  static const FileResource_ResourceType ResourceTypeUNSPECIFIED =
      FileResource_ResourceType._(
          0, _omitEnumNames ? '' : 'ResourceTypeUNSPECIFIED');
  static const FileResource_ResourceType Video =
      FileResource_ResourceType._(1, _omitEnumNames ? '' : 'Video');
  static const FileResource_ResourceType Subtitle =
      FileResource_ResourceType._(2, _omitEnumNames ? '' : 'Subtitle');
  static const FileResource_ResourceType Audio =
      FileResource_ResourceType._(3, _omitEnumNames ? '' : 'Audio');

  static const $core.List<FileResource_ResourceType> values =
      <FileResource_ResourceType>[
    ResourceTypeUNSPECIFIED,
    Video,
    Subtitle,
    Audio,
  ];

  static final $core.List<FileResource_ResourceType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FileResource_ResourceType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileResource_ResourceType._(super.value, super.name);
}

class Media_MediaType extends $pb.ProtobufEnum {
  static const Media_MediaType MEDIA_UNSPECIFIED =
      Media_MediaType._(0, _omitEnumNames ? '' : 'MEDIA_UNSPECIFIED');
  static const Media_MediaType MEDIA_SERIES =
      Media_MediaType._(1, _omitEnumNames ? '' : 'MEDIA_SERIES');
  static const Media_MediaType MEDIA_INFO =
      Media_MediaType._(2, _omitEnumNames ? '' : 'MEDIA_INFO');
  static const Media_MediaType MEDIA_ITEM =
      Media_MediaType._(3, _omitEnumNames ? '' : 'MEDIA_ITEM');

  static const $core.List<Media_MediaType> values = <Media_MediaType>[
    MEDIA_UNSPECIFIED,
    MEDIA_SERIES,
    MEDIA_INFO,
    MEDIA_ITEM,
  ];

  static final $core.List<Media_MediaType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Media_MediaType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Media_MediaType._(super.value, super.name);
}

class Media_CreditType extends $pb.ProtobufEnum {
  static const Media_CreditType CreditUNSPECIFIED =
      Media_CreditType._(0, _omitEnumNames ? '' : 'CreditUNSPECIFIED');
  static const Media_CreditType CreditActor =
      Media_CreditType._(1, _omitEnumNames ? '' : 'CreditActor');
  static const Media_CreditType CreditCastDirecting =
      Media_CreditType._(2, _omitEnumNames ? '' : 'CreditCastDirecting');
  static const Media_CreditType CreditCastProduction =
      Media_CreditType._(3, _omitEnumNames ? '' : 'CreditCastProduction');
  static const Media_CreditType CreditCastWriting =
      Media_CreditType._(4, _omitEnumNames ? '' : 'CreditCastWriting');

  static const $core.List<Media_CreditType> values = <Media_CreditType>[
    CreditUNSPECIFIED,
    CreditActor,
    CreditCastDirecting,
    CreditCastProduction,
    CreditCastWriting,
  ];

  static final $core.List<Media_CreditType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Media_CreditType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Media_CreditType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
