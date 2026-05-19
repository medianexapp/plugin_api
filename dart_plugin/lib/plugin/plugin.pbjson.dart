// This is a generated file - do not edit.
//
// Generated from plugin/plugin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pluginTypeDescriptor instead')
const PluginType$json = {
  '1': 'PluginType',
  '2': [
    {'1': 'PLUGIN_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'PLUGIN_TYPE_FILE_SYSTEM', '2': 1},
    {'1': 'PLUGIN_TYPE_MEDIA', '2': 2},
  ],
};

/// Descriptor for `PluginType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pluginTypeDescriptor = $convert.base64Decode(
    'CgpQbHVnaW5UeXBlEhsKF1BMVUdJTl9UWVBFX1VOU1BFQ0lGSUVEEAASGwoXUExVR0lOX1RZUE'
    'VfRklMRV9TWVNURU0QARIVChFQTFVHSU5fVFlQRV9NRURJQRAC');

@$core.Deprecated('Use formdataDescriptor instead')
const Formdata$json = {
  '1': 'Formdata',
  '2': [
    {
      '1': 'form_items',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.plugin.Formdata.FormItem',
      '10': 'formItems'
    },
  ],
  '3': [Formdata_FormItem$json],
};

@$core.Deprecated('Use formdataDescriptor instead')
const Formdata_FormItem$json = {
  '1': 'FormItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'double_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.plugin.DoubleValue',
      '9': 0,
      '10': 'doubleValue'
    },
    {
      '1': 'int64_value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.plugin.Int64Value',
      '9': 0,
      '10': 'int64Value'
    },
    {
      '1': 'bool_value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.plugin.BoolValue',
      '9': 0,
      '10': 'boolValue'
    },
    {
      '1': 'string_value',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.plugin.StringValue',
      '9': 0,
      '10': 'stringValue'
    },
    {
      '1': 'obscure_string_value',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.plugin.ObscureStringValue',
      '9': 0,
      '10': 'obscureStringValue'
    },
    {
      '1': 'dir_path_value',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.plugin.DirPathValue',
      '9': 0,
      '10': 'dirPathValue'
    },
    {
      '1': 'file_path_value',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.plugin.FilePathValue',
      '9': 0,
      '10': 'filePathValue'
    },
    {
      '1': 'enum_values',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.plugin.Formdata.FormItem',
      '10': 'enumValues'
    },
  ],
  '8': [
    {'1': 'Value'},
  ],
};

/// Descriptor for `Formdata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formdataDescriptor = $convert.base64Decode(
    'CghGb3JtZGF0YRI4Cgpmb3JtX2l0ZW1zGAsgAygLMhkucGx1Z2luLkZvcm1kYXRhLkZvcm1JdG'
    'VtUglmb3JtSXRlbXMakQQKCEZvcm1JdGVtEhIKBG5hbWUYASABKAlSBG5hbWUSOAoMZG91Ymxl'
    'X3ZhbHVlGAIgASgLMhMucGx1Z2luLkRvdWJsZVZhbHVlSABSC2RvdWJsZVZhbHVlEjUKC2ludD'
    'Y0X3ZhbHVlGAMgASgLMhIucGx1Z2luLkludDY0VmFsdWVIAFIKaW50NjRWYWx1ZRIyCgpib29s'
    'X3ZhbHVlGAQgASgLMhEucGx1Z2luLkJvb2xWYWx1ZUgAUglib29sVmFsdWUSOAoMc3RyaW5nX3'
    'ZhbHVlGAUgASgLMhMucGx1Z2luLlN0cmluZ1ZhbHVlSABSC3N0cmluZ1ZhbHVlEk4KFG9ic2N1'
    'cmVfc3RyaW5nX3ZhbHVlGAYgASgLMhoucGx1Z2luLk9ic2N1cmVTdHJpbmdWYWx1ZUgAUhJvYn'
    'NjdXJlU3RyaW5nVmFsdWUSPAoOZGlyX3BhdGhfdmFsdWUYByABKAsyFC5wbHVnaW4uRGlyUGF0'
    'aFZhbHVlSABSDGRpclBhdGhWYWx1ZRI/Cg9maWxlX3BhdGhfdmFsdWUYCCABKAsyFS5wbHVnaW'
    '4uRmlsZVBhdGhWYWx1ZUgAUg1maWxlUGF0aFZhbHVlEjoKC2VudW1fdmFsdWVzGAogAygLMhku'
    'cGx1Z2luLkZvcm1kYXRhLkZvcm1JdGVtUgplbnVtVmFsdWVzQgcKBVZhbHVl');

@$core.Deprecated('Use scanqrcodeDescriptor instead')
const Scanqrcode$json = {
  '1': 'Scanqrcode',
  '2': [
    {'1': 'qrcode_image', '3': 1, '4': 1, '5': 12, '10': 'qrcodeImage'},
    {
      '1': 'qrcode_image_param',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'qrcodeImageParam'
    },
    {
      '1': 'qrcode_expire_time',
      '3': 3,
      '4': 1,
      '5': 4,
      '10': 'qrcodeExpireTime'
    },
    {'1': 'qrcode_image_url', '3': 4, '4': 1, '5': 9, '10': 'qrcodeImageUrl'},
    {
      '1': 'qrcode_image_content',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'qrcodeImageContent'
    },
  ],
};

/// Descriptor for `Scanqrcode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanqrcodeDescriptor = $convert.base64Decode(
    'CgpTY2FucXJjb2RlEiEKDHFyY29kZV9pbWFnZRgBIAEoDFILcXJjb2RlSW1hZ2USLAoScXJjb2'
    'RlX2ltYWdlX3BhcmFtGAIgASgJUhBxcmNvZGVJbWFnZVBhcmFtEiwKEnFyY29kZV9leHBpcmVf'
    'dGltZRgDIAEoBFIQcXJjb2RlRXhwaXJlVGltZRIoChBxcmNvZGVfaW1hZ2VfdXJsGAQgASgJUg'
    '5xcmNvZGVJbWFnZVVybBIwChRxcmNvZGVfaW1hZ2VfY29udGVudBgFIAEoCVIScXJjb2RlSW1h'
    'Z2VDb250ZW50');

@$core.Deprecated('Use callbackDescriptor instead')
const Callback$json = {
  '1': 'Callback',
  '2': [
    {'1': 'callback_url', '3': 1, '4': 1, '5': 9, '10': 'callbackUrl'},
    {
      '1': 'callback_url_param',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'callbackUrlParam'
    },
    {'1': 'callback_url_data', '3': 3, '4': 1, '5': 9, '10': 'callbackUrlData'},
  ],
};

/// Descriptor for `Callback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callbackDescriptor = $convert.base64Decode(
    'CghDYWxsYmFjaxIhCgxjYWxsYmFja191cmwYASABKAlSC2NhbGxiYWNrVXJsEiwKEmNhbGxiYW'
    'NrX3VybF9wYXJhbRgCIAEoCVIQY2FsbGJhY2tVcmxQYXJhbRIqChFjYWxsYmFja191cmxfZGF0'
    'YRgDIAEoCVIPY2FsbGJhY2tVcmxEYXRh');

@$core.Deprecated('Use refreshDescriptor instead')
const Refresh$json = {
  '1': 'Refresh',
  '2': [
    {
      '1': 'auth_data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.plugin.AuthData',
      '10': 'authData'
    },
  ],
};

/// Descriptor for `Refresh`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDescriptor = $convert.base64Decode(
    'CgdSZWZyZXNoEi0KCWF1dGhfZGF0YRgBIAEoCzIQLnBsdWdpbi5BdXRoRGF0YVIIYXV0aERhdG'
    'E=');

@$core.Deprecated('Use authMethodDescriptor instead')
const AuthMethod$json = {
  '1': 'AuthMethod',
  '2': [
    {
      '1': 'formdata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.plugin.Formdata',
      '9': 0,
      '10': 'formdata'
    },
    {
      '1': 'scanqrcode',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.plugin.Scanqrcode',
      '9': 0,
      '10': 'scanqrcode'
    },
    {
      '1': 'callback',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.plugin.Callback',
      '9': 0,
      '10': 'callback'
    },
    {
      '1': 'refresh',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.plugin.Refresh',
      '9': 0,
      '10': 'refresh'
    },
    {'1': 'help_doc_url', '3': 5, '4': 1, '5': 9, '10': 'helpDocUrl'},
  ],
  '8': [
    {'1': 'method'},
  ],
};

/// Descriptor for `AuthMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authMethodDescriptor = $convert.base64Decode(
    'CgpBdXRoTWV0aG9kEi4KCGZvcm1kYXRhGAEgASgLMhAucGx1Z2luLkZvcm1kYXRhSABSCGZvcm'
    '1kYXRhEjQKCnNjYW5xcmNvZGUYAiABKAsyEi5wbHVnaW4uU2NhbnFyY29kZUgAUgpzY2FucXJj'
    'b2RlEi4KCGNhbGxiYWNrGAMgASgLMhAucGx1Z2luLkNhbGxiYWNrSABSCGNhbGxiYWNrEisKB3'
    'JlZnJlc2gYBCABKAsyDy5wbHVnaW4uUmVmcmVzaEgAUgdyZWZyZXNoEiAKDGhlbHBfZG9jX3Vy'
    'bBgFIAEoCVIKaGVscERvY1VybEIICgZtZXRob2Q=');

@$core.Deprecated('Use authDescriptor instead')
const Auth$json = {
  '1': 'Auth',
  '2': [
    {
      '1': 'auth_methods',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.plugin.AuthMethod',
      '10': 'authMethods'
    },
  ],
};

/// Descriptor for `Auth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDescriptor = $convert.base64Decode(
    'CgRBdXRoEjUKDGF1dGhfbWV0aG9kcxgBIAMoCzISLnBsdWdpbi5BdXRoTWV0aG9kUgthdXRoTW'
    'V0aG9kcw==');

@$core.Deprecated('Use fileEntryDescriptor instead')
const FileEntry$json = {
  '1': 'FileEntry',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'file_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.plugin.FileEntry.FileType',
      '10': 'fileType'
    },
    {'1': 'size', '3': 3, '4': 1, '5': 4, '10': 'size'},
    {'1': 'raw_data', '3': 4, '4': 1, '5': 12, '10': 'rawData'},
    {'1': 'created_time', '3': 10, '4': 1, '5': 4, '10': 'createdTime'},
    {'1': 'modified_time', '3': 11, '4': 1, '5': 4, '10': 'modifiedTime'},
    {'1': 'accessed_time', '3': 12, '4': 1, '5': 4, '10': 'accessedTime'},
  ],
  '4': [FileEntry_FileType$json],
};

@$core.Deprecated('Use fileEntryDescriptor instead')
const FileEntry_FileType$json = {
  '1': 'FileType',
  '2': [
    {'1': 'FileTypeUNSPECIFIED', '2': 0},
    {'1': 'FileTypeDir', '2': 1},
    {'1': 'FileTypeFile', '2': 2},
    {'1': 'FileTypeLink', '2': 3},
  ],
};

/// Descriptor for `FileEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileEntryDescriptor = $convert.base64Decode(
    'CglGaWxlRW50cnkSEgoEbmFtZRgBIAEoCVIEbmFtZRI3CglmaWxlX3R5cGUYAiABKA4yGi5wbH'
    'VnaW4uRmlsZUVudHJ5LkZpbGVUeXBlUghmaWxlVHlwZRISCgRzaXplGAMgASgEUgRzaXplEhkK'
    'CHJhd19kYXRhGAQgASgMUgdyYXdEYXRhEiEKDGNyZWF0ZWRfdGltZRgKIAEoBFILY3JlYXRlZF'
    'RpbWUSIwoNbW9kaWZpZWRfdGltZRgLIAEoBFIMbW9kaWZpZWRUaW1lEiMKDWFjY2Vzc2VkX3Rp'
    'bWUYDCABKARSDGFjY2Vzc2VkVGltZSJYCghGaWxlVHlwZRIXChNGaWxlVHlwZVVOU1BFQ0lGSU'
    'VEEAASDwoLRmlsZVR5cGVEaXIQARIQCgxGaWxlVHlwZUZpbGUQAhIQCgxGaWxlVHlwZUxpbmsQ'
    'Aw==');

@$core.Deprecated('Use dirEntryDescriptor instead')
const DirEntry$json = {
  '1': 'DirEntry',
  '2': [
    {
      '1': 'file_entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.plugin.FileEntry',
      '10': 'fileEntries'
    },
    {'1': 'page_size', '3': 2, '4': 1, '5': 4, '10': 'pageSize'},
    {'1': 'dir_page_key', '3': 10, '4': 1, '5': 9, '10': 'dirPageKey'},
  ],
};

/// Descriptor for `DirEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dirEntryDescriptor = $convert.base64Decode(
    'CghEaXJFbnRyeRI0CgxmaWxlX2VudHJpZXMYASADKAsyES5wbHVnaW4uRmlsZUVudHJ5UgtmaW'
    'xlRW50cmllcxIbCglwYWdlX3NpemUYAiABKARSCHBhZ2VTaXplEiAKDGRpcl9wYWdlX2tleRgK'
    'IAEoCVIKZGlyUGFnZUtleQ==');

@$core.Deprecated('Use getDirEntryRequestDescriptor instead')
const GetDirEntryRequest$json = {
  '1': 'GetDirEntryRequest',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'page', '3': 2, '4': 1, '5': 4, '10': 'page'},
    {'1': 'page_size', '3': 3, '4': 1, '5': 4, '10': 'pageSize'},
    {
      '1': 'file_entry',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.plugin.FileEntry',
      '10': 'fileEntry'
    },
    {'1': 'dir_page_key', '3': 12, '4': 1, '5': 9, '10': 'dirPageKey'},
  ],
};

/// Descriptor for `GetDirEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDirEntryRequestDescriptor = $convert.base64Decode(
    'ChJHZXREaXJFbnRyeVJlcXVlc3QSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgRwYWdlGAIgASgEUg'
    'RwYWdlEhsKCXBhZ2Vfc2l6ZRgDIAEoBFIIcGFnZVNpemUSMAoKZmlsZV9lbnRyeRgKIAEoCzIR'
    'LnBsdWdpbi5GaWxlRW50cnlSCWZpbGVFbnRyeRIgCgxkaXJfcGFnZV9rZXkYDCABKAlSCmRpcl'
    'BhZ2VLZXk=');

@$core.Deprecated('Use getFileResourceRequestDescriptor instead')
const GetFileResourceRequest$json = {
  '1': 'GetFileResourceRequest',
  '2': [
    {'1': 'file_path', '3': 1, '4': 1, '5': 9, '10': 'filePath'},
    {
      '1': 'file_entry',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.plugin.FileEntry',
      '10': 'fileEntry'
    },
    {'1': 'is_media', '3': 11, '4': 1, '5': 8, '10': 'isMedia'},
    {'1': 'media_play_id', '3': 20, '4': 1, '5': 9, '10': 'mediaPlayId'},
  ],
};

/// Descriptor for `GetFileResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileResourceRequestDescriptor = $convert.base64Decode(
    'ChZHZXRGaWxlUmVzb3VyY2VSZXF1ZXN0EhsKCWZpbGVfcGF0aBgBIAEoCVIIZmlsZVBhdGgSMA'
    'oKZmlsZV9lbnRyeRgKIAEoCzIRLnBsdWdpbi5GaWxlRW50cnlSCWZpbGVFbnRyeRIZCghpc19t'
    'ZWRpYRgLIAEoCFIHaXNNZWRpYRIiCg1tZWRpYV9wbGF5X2lkGBQgASgJUgttZWRpYVBsYXlJZA'
    '==');

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource$json = {
  '1': 'FileResource',
  '2': [
    {
      '1': 'file_resource_data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.plugin.FileResource.FileResourceData',
      '10': 'fileResourceData'
    },
  ],
  '3': [FileResource_FileResourceData$json],
  '4': [FileResource_Resolution$json, FileResource_ResourceType$json],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_FileResourceData$json = {
  '1': 'FileResourceData',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {
      '1': 'resolution',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.plugin.FileResource.Resolution',
      '10': 'resolution'
    },
    {'1': 'expire_time', '3': 3, '4': 1, '5': 4, '10': 'expireTime'},
    {
      '1': 'resource_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.plugin.FileResource.ResourceType',
      '10': 'resourceType'
    },
    {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'header',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.plugin.FileResource.FileResourceData.HeaderEntry',
      '10': 'header'
    },
    {'1': 'size', '3': 7, '4': 1, '5': 4, '10': 'size'},
    {'1': 'proxy', '3': 8, '4': 1, '5': 8, '10': 'proxy'},
    {'1': 'proxy_chunk_size', '3': 9, '4': 1, '5': 4, '10': 'proxyChunkSize'},
    {
      '1': 'proxy_chunk_parallel',
      '3': 10,
      '4': 1,
      '5': 4,
      '10': 'proxyChunkParallel'
    },
  ],
  '3': [FileResource_FileResourceData_HeaderEntry$json],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_FileResourceData_HeaderEntry$json = {
  '1': 'HeaderEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_Resolution$json = {
  '1': 'Resolution',
  '2': [
    {'1': 'ResolutionUNSPECIFIED', '2': 0},
    {'1': 'Original', '2': 1},
    {'1': 'LD', '2': 2},
    {'1': 'SD', '2': 3},
    {'1': 'HD', '2': 4},
    {'1': 'FHD', '2': 5},
    {'1': 'QHD', '2': 6},
    {'1': 'UHD', '2': 7},
  ],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_ResourceType$json = {
  '1': 'ResourceType',
  '2': [
    {'1': 'ResourceTypeUNSPECIFIED', '2': 0},
    {'1': 'Video', '2': 1},
    {'1': 'Subtitle', '2': 2},
    {'1': 'Audio', '2': 3},
  ],
};

/// Descriptor for `FileResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileResourceDescriptor = $convert.base64Decode(
    'CgxGaWxlUmVzb3VyY2USUwoSZmlsZV9yZXNvdXJjZV9kYXRhGAEgAygLMiUucGx1Z2luLkZpbG'
    'VSZXNvdXJjZS5GaWxlUmVzb3VyY2VEYXRhUhBmaWxlUmVzb3VyY2VEYXRhGvADChBGaWxlUmVz'
    'b3VyY2VEYXRhEhAKA3VybBgBIAEoCVIDdXJsEj8KCnJlc29sdXRpb24YAiABKA4yHy5wbHVnaW'
    '4uRmlsZVJlc291cmNlLlJlc29sdXRpb25SCnJlc29sdXRpb24SHwoLZXhwaXJlX3RpbWUYAyAB'
    'KARSCmV4cGlyZVRpbWUSRgoNcmVzb3VyY2VfdHlwZRgEIAEoDjIhLnBsdWdpbi5GaWxlUmVzb3'
    'VyY2UuUmVzb3VyY2VUeXBlUgxyZXNvdXJjZVR5cGUSFAoFdGl0bGUYBSABKAlSBXRpdGxlEkkK'
    'BmhlYWRlchgGIAMoCzIxLnBsdWdpbi5GaWxlUmVzb3VyY2UuRmlsZVJlc291cmNlRGF0YS5IZW'
    'FkZXJFbnRyeVIGaGVhZGVyEhIKBHNpemUYByABKARSBHNpemUSFAoFcHJveHkYCCABKAhSBXBy'
    'b3h5EigKEHByb3h5X2NodW5rX3NpemUYCSABKARSDnByb3h5Q2h1bmtTaXplEjAKFHByb3h5X2'
    'NodW5rX3BhcmFsbGVsGAogASgEUhJwcm94eUNodW5rUGFyYWxsZWwaOQoLSGVhZGVyRW50cnkS'
    'EAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ASJoCgpSZXNvbHV0aW'
    '9uEhkKFVJlc29sdXRpb25VTlNQRUNJRklFRBAAEgwKCE9yaWdpbmFsEAESBgoCTEQQAhIGCgJT'
    'RBADEgYKAkhEEAQSBwoDRkhEEAUSBwoDUUhEEAYSBwoDVUhEEAciTwoMUmVzb3VyY2VUeXBlEh'
    'sKF1Jlc291cmNlVHlwZVVOU1BFQ0lGSUVEEAASCQoFVmlkZW8QARIMCghTdWJ0aXRsZRACEgkK'
    'BUF1ZGlvEAM=');

@$core.Deprecated('Use authDataDescriptor instead')
const AuthData$json = {
  '1': 'AuthData',
  '2': [
    {'1': 'auth_data_bytes', '3': 1, '4': 1, '5': 12, '10': 'authDataBytes'},
    {
      '1': 'auth_data_expired_time',
      '3': 2,
      '4': 1,
      '5': 4,
      '10': 'authDataExpiredTime'
    },
  ],
};

/// Descriptor for `AuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDataDescriptor = $convert.base64Decode(
    'CghBdXRoRGF0YRImCg9hdXRoX2RhdGFfYnl0ZXMYASABKAxSDWF1dGhEYXRhQnl0ZXMSMwoWYX'
    'V0aF9kYXRhX2V4cGlyZWRfdGltZRgCIAEoBFITYXV0aERhdGFFeHBpcmVkVGltZQ==');

@$core.Deprecated('Use oauthConfigDescriptor instead')
const OauthConfig$json = {
  '1': 'OauthConfig',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 9, '10': 'clientId'},
    {'1': 'client_secret', '3': 2, '4': 1, '5': 9, '10': 'clientSecret'},
    {'1': 'redirect_uri', '3': 3, '4': 1, '5': 9, '10': 'redirectUri'},
    {'1': 'scopes', '3': 4, '4': 3, '5': 9, '10': 'scopes'},
    {'1': 'auth_url', '3': 5, '4': 1, '5': 9, '10': 'authUrl'},
    {'1': 'qrcode_url', '3': 6, '4': 1, '5': 9, '10': 'qrcodeUrl'},
    {'1': 'token_url', '3': 10, '4': 1, '5': 9, '10': 'tokenUrl'},
    {'1': 'token_req_type', '3': 11, '4': 1, '5': 9, '10': 'tokenReqType'},
  ],
};

/// Descriptor for `OauthConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oauthConfigDescriptor = $convert.base64Decode(
    'CgtPYXV0aENvbmZpZxIbCgljbGllbnRfaWQYASABKAlSCGNsaWVudElkEiMKDWNsaWVudF9zZW'
    'NyZXQYAiABKAlSDGNsaWVudFNlY3JldBIhCgxyZWRpcmVjdF91cmkYAyABKAlSC3JlZGlyZWN0'
    'VXJpEhYKBnNjb3BlcxgEIAMoCVIGc2NvcGVzEhkKCGF1dGhfdXJsGAUgASgJUgdhdXRoVXJsEh'
    '0KCnFyY29kZV91cmwYBiABKAlSCXFyY29kZVVybBIbCgl0b2tlbl91cmwYCiABKAlSCHRva2Vu'
    'VXJsEiQKDnRva2VuX3JlcV90eXBlGAsgASgJUgx0b2tlblJlcVR5cGU=');

@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = {
  '1': 'Token',
  '2': [
    {'1': 'token_type', '3': 1, '4': 1, '5': 9, '10': 'tokenType'},
    {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'expires_in', '3': 4, '4': 1, '5': 4, '10': 'expiresIn'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode(
    'CgVUb2tlbhIdCgp0b2tlbl90eXBlGAEgASgJUgl0b2tlblR5cGUSIQoMYWNjZXNzX3Rva2VuGA'
    'IgASgJUgthY2Nlc3NUb2tlbhIjCg1yZWZyZXNoX3Rva2VuGAMgASgJUgxyZWZyZXNoVG9rZW4S'
    'HQoKZXhwaXJlc19pbhgEIAEoBFIJZXhwaXJlc0lu');

@$core.Deprecated('Use itemDescriptor instead')
const Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEhQKBWluZGV4GAEgASgFUgVpbmRleBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXZhbH'
    'VlGAMgASgJUgV2YWx1ZRISCgRpY29uGAQgASgJUgRpY29u');

@$core.Deprecated('Use mediaMenuDescriptor instead')
const MediaMenu$json = {
  '1': 'MediaMenu',
  '2': [
    {'1': 'menus', '3': 1, '4': 3, '5': 11, '6': '.plugin.Item', '10': 'menus'},
  ],
};

/// Descriptor for `MediaMenu`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaMenuDescriptor = $convert.base64Decode(
    'CglNZWRpYU1lbnUSIgoFbWVudXMYASADKAsyDC5wbHVnaW4uSXRlbVIFbWVudXM=');

@$core.Deprecated('Use filterItemsDescriptor instead')
const FilterItems$json = {
  '1': 'FilterItems',
  '2': [
    {
      '1': 'filters',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.plugin.FilterItems.Filter',
      '10': 'filters'
    },
  ],
  '3': [FilterItems_Filter$json],
};

@$core.Deprecated('Use filterItemsDescriptor instead')
const FilterItems_Filter$json = {
  '1': 'Filter',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.plugin.Item', '10': 'items'},
  ],
};

/// Descriptor for `FilterItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterItemsDescriptor = $convert.base64Decode(
    'CgtGaWx0ZXJJdGVtcxI0CgdmaWx0ZXJzGAEgAygLMhoucGx1Z2luLkZpbHRlckl0ZW1zLkZpbH'
    'RlclIHZmlsdGVycxpACgZGaWx0ZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIiCgVpdGVtcxgCIAMo'
    'CzIMLnBsdWdpbi5JdGVtUgVpdGVtcw==');

@$core.Deprecated('Use mediaDescriptor instead')
const Media$json = {
  '1': 'Media',
  '2': [
    {'1': 'media_id', '3': 1, '4': 1, '5': 9, '10': 'mediaId'},
    {
      '1': 'media_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.plugin.Media.MediaType',
      '10': 'mediaType'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'parent_media_id', '3': 5, '4': 1, '5': 9, '10': 'parentMediaId'},
    {'1': 'release_date', '3': 13, '4': 1, '5': 9, '10': 'releaseDate'},
    {'1': 'year', '3': 14, '4': 1, '5': 4, '10': 'year'},
    {'1': 'genres', '3': 15, '4': 3, '5': 9, '10': 'genres'},
    {'1': 'backdrop_url', '3': 16, '4': 1, '5': 9, '10': 'backdropUrl'},
    {'1': 'poster_url', '3': 17, '4': 1, '5': 9, '10': 'posterUrl'},
    {'1': 'original_name', '3': 18, '4': 1, '5': 9, '10': 'originalName'},
    {
      '1': 'original_language',
      '3': 19,
      '4': 1,
      '5': 9,
      '10': 'originalLanguage'
    },
    {
      '1': 'credit',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.plugin.Media.Credit',
      '10': 'credit'
    },
    {
      '1': 'metadata',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.plugin.Media.MetadataEntry',
      '10': 'metadata'
    },
    {'1': 'play_index', '3': 30, '4': 1, '5': 4, '10': 'playIndex'},
    {'1': 'duration', '3': 31, '4': 1, '5': 4, '10': 'duration'},
    {'1': 'still_url', '3': 32, '4': 1, '5': 9, '10': 'stillUrl'},
  ],
  '3': [Media_Credit$json, Media_MetadataEntry$json],
  '4': [Media_MediaType$json, Media_CreditType$json],
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_Credit$json = {
  '1': 'Credit',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'credit_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.plugin.Media.CreditType',
      '10': 'creditType'
    },
  ],
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_MediaType$json = {
  '1': 'MediaType',
  '2': [
    {'1': 'MEDIA_UNSPECIFIED', '2': 0},
    {'1': 'MEDIA_SERIES', '2': 1},
    {'1': 'MEDIA_INFO', '2': 2},
    {'1': 'MEDIA_PLAY_ITEM', '2': 3},
  ],
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_CreditType$json = {
  '1': 'CreditType',
  '2': [
    {'1': 'CreditUNSPECIFIED', '2': 0},
    {'1': 'CreditActor', '2': 1},
    {'1': 'CreditCastDirecting', '2': 2},
    {'1': 'CreditCastProduction', '2': 3},
    {'1': 'CreditCastWriting', '2': 4},
  ],
};

/// Descriptor for `Media`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaDescriptor = $convert.base64Decode(
    'CgVNZWRpYRIZCghtZWRpYV9pZBgBIAEoCVIHbWVkaWFJZBI2CgptZWRpYV90eXBlGAIgASgOMh'
    'cucGx1Z2luLk1lZGlhLk1lZGlhVHlwZVIJbWVkaWFUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUS'
    'EgoEZGVzYxgEIAEoCVIEZGVzYxImCg9wYXJlbnRfbWVkaWFfaWQYBSABKAlSDXBhcmVudE1lZG'
    'lhSWQSIQoMcmVsZWFzZV9kYXRlGA0gASgJUgtyZWxlYXNlRGF0ZRISCgR5ZWFyGA4gASgEUgR5'
    'ZWFyEhYKBmdlbnJlcxgPIAMoCVIGZ2VucmVzEiEKDGJhY2tkcm9wX3VybBgQIAEoCVILYmFja2'
    'Ryb3BVcmwSHQoKcG9zdGVyX3VybBgRIAEoCVIJcG9zdGVyVXJsEiMKDW9yaWdpbmFsX25hbWUY'
    'EiABKAlSDG9yaWdpbmFsTmFtZRIrChFvcmlnaW5hbF9sYW5ndWFnZRgTIAEoCVIQb3JpZ2luYW'
    'xMYW5ndWFnZRIsCgZjcmVkaXQYFCADKAsyFC5wbHVnaW4uTWVkaWEuQ3JlZGl0UgZjcmVkaXQS'
    'NwoIbWV0YWRhdGEYFSADKAsyGy5wbHVnaW4uTWVkaWEuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdG'
    'ESHQoKcGxheV9pbmRleBgeIAEoBFIJcGxheUluZGV4EhoKCGR1cmF0aW9uGB8gASgEUghkdXJh'
    'dGlvbhIbCglzdGlsbF91cmwYICABKAlSCHN0aWxsVXJsGlcKBkNyZWRpdBISCgRuYW1lGAEgAS'
    'gJUgRuYW1lEjkKC2NyZWRpdF90eXBlGAIgASgOMhgucGx1Z2luLk1lZGlhLkNyZWRpdFR5cGVS'
    'CmNyZWRpdFR5cGUaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZR'
    'gCIAEoCVIFdmFsdWU6AjgBIlkKCU1lZGlhVHlwZRIVChFNRURJQV9VTlNQRUNJRklFRBAAEhAK'
    'DE1FRElBX1NFUklFUxABEg4KCk1FRElBX0lORk8QAhITCg9NRURJQV9QTEFZX0lURU0QAyJ+Cg'
    'pDcmVkaXRUeXBlEhUKEUNyZWRpdFVOU1BFQ0lGSUVEEAASDwoLQ3JlZGl0QWN0b3IQARIXChND'
    'cmVkaXRDYXN0RGlyZWN0aW5nEAISGAoUQ3JlZGl0Q2FzdFByb2R1Y3Rpb24QAxIVChFDcmVkaX'
    'RDYXN0V3JpdGluZxAE');

@$core.Deprecated('Use listMediaInfoRequestDescriptor instead')
const ListMediaInfoRequest$json = {
  '1': 'ListMediaInfoRequest',
  '2': [
    {'1': 'menu', '3': 1, '4': 1, '5': 11, '6': '.plugin.Item', '10': 'menu'},
    {
      '1': 'filters',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.plugin.FilterItems',
      '10': 'filters'
    },
    {'1': 'search_name', '3': 3, '4': 1, '5': 9, '10': 'searchName'},
    {'1': 'page', '3': 10, '4': 1, '5': 4, '10': 'page'},
    {'1': 'page_size', '3': 11, '4': 1, '5': 4, '10': 'pageSize'},
    {'1': 'page_key', '3': 12, '4': 1, '5': 9, '10': 'pageKey'},
  ],
};

/// Descriptor for `ListMediaInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMediaInfoRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0TWVkaWFJbmZvUmVxdWVzdBIgCgRtZW51GAEgASgLMgwucGx1Z2luLkl0ZW1SBG1lbn'
    'USLQoHZmlsdGVycxgCIAEoCzITLnBsdWdpbi5GaWx0ZXJJdGVtc1IHZmlsdGVycxIfCgtzZWFy'
    'Y2hfbmFtZRgDIAEoCVIKc2VhcmNoTmFtZRISCgRwYWdlGAogASgEUgRwYWdlEhsKCXBhZ2Vfc2'
    'l6ZRgLIAEoBFIIcGFnZVNpemUSGQoIcGFnZV9rZXkYDCABKAlSB3BhZ2VLZXk=');

@$core.Deprecated('Use listMediaInfoResponseDescriptor instead')
const ListMediaInfoResponse$json = {
  '1': 'ListMediaInfoResponse',
  '2': [
    {
      '1': 'media_infos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.plugin.Media',
      '10': 'mediaInfos'
    },
    {
      '1': 'support_search_name',
      '3': 10,
      '4': 1,
      '5': 8,
      '10': 'supportSearchName'
    },
    {
      '1': 'all_filters',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.plugin.FilterItems',
      '10': 'allFilters'
    },
    {'1': 'next_page_key', '3': 12, '4': 1, '5': 9, '10': 'nextPageKey'},
  ],
};

/// Descriptor for `ListMediaInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMediaInfoResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0TWVkaWFJbmZvUmVzcG9uc2USLgoLbWVkaWFfaW5mb3MYASADKAsyDS5wbHVnaW4uTW'
    'VkaWFSCm1lZGlhSW5mb3MSLgoTc3VwcG9ydF9zZWFyY2hfbmFtZRgKIAEoCFIRc3VwcG9ydFNl'
    'YXJjaE5hbWUSNAoLYWxsX2ZpbHRlcnMYCyABKAsyEy5wbHVnaW4uRmlsdGVySXRlbXNSCmFsbE'
    'ZpbHRlcnMSIgoNbmV4dF9wYWdlX2tleRgMIAEoCVILbmV4dFBhZ2VLZXk=');

@$core.Deprecated('Use getMediaDetailRequestDescriptor instead')
const GetMediaDetailRequest$json = {
  '1': 'GetMediaDetailRequest',
  '2': [
    {'1': 'media_info_id', '3': 1, '4': 1, '5': 9, '10': 'mediaInfoId'},
  ],
};

/// Descriptor for `GetMediaDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMediaDetailRequestDescriptor = $convert.base64Decode(
    'ChVHZXRNZWRpYURldGFpbFJlcXVlc3QSIgoNbWVkaWFfaW5mb19pZBgBIAEoCVILbWVkaWFJbm'
    'ZvSWQ=');

@$core.Deprecated('Use getMediaDetailResponseDescriptor instead')
const GetMediaDetailResponse$json = {
  '1': 'GetMediaDetailResponse',
  '2': [
    {
      '1': 'media_series',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.plugin.Media',
      '10': 'mediaSeries'
    },
    {
      '1': 'media_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.plugin.Media',
      '10': 'mediaInfo'
    },
    {
      '1': 'media_items',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.plugin.Media',
      '10': 'mediaItems'
    },
  ],
};

/// Descriptor for `GetMediaDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMediaDetailResponseDescriptor = $convert.base64Decode(
    'ChZHZXRNZWRpYURldGFpbFJlc3BvbnNlEjAKDG1lZGlhX3NlcmllcxgBIAEoCzINLnBsdWdpbi'
    '5NZWRpYVILbWVkaWFTZXJpZXMSLAoKbWVkaWFfaW5mbxgCIAEoCzINLnBsdWdpbi5NZWRpYVIJ'
    'bWVkaWFJbmZvEi4KC21lZGlhX2l0ZW1zGAMgAygLMg0ucGx1Z2luLk1lZGlhUgptZWRpYUl0ZW'
    '1z');
