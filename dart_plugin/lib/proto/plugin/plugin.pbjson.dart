//
//  Generated code. Do not modify.
//  source: plugin/plugin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use authDescriptor instead')
const Auth$json = {
  '1': 'Auth',
  '2': [
    {'1': 'auth_methods', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'authMethods'},
  ],
  '3': [Auth_FormData$json, Auth_ScanQrcode$json, Auth_Callback$json],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_FormData$json = {
  '1': 'FormData',
  '2': [
    {'1': 'form_items', '3': 1, '4': 3, '5': 11, '6': '.plugin.Auth.FormData.FormItem', '10': 'formItems'},
  ],
  '3': [Auth_FormData_FormItem$json],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_FormData_FormItem$json = {
  '1': 'FormItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
    {'1': 'enum_values', '3': 3, '4': 3, '5': 11, '6': '.plugin.Auth.FormData.FormItem', '10': 'enumValues'},
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_ScanQrcode$json = {
  '1': 'ScanQrcode',
  '2': [
    {'1': 'qrcode_image', '3': 1, '4': 1, '5': 12, '10': 'qrcodeImage'},
    {'1': 'qrcode_image_param', '3': 2, '4': 1, '5': 9, '10': 'qrcodeImageParam'},
    {'1': 'qrcode_expire_time', '3': 3, '4': 1, '5': 4, '10': 'qrcodeExpireTime'},
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_Callback$json = {
  '1': 'Callback',
  '2': [
    {'1': 'callback_url', '3': 1, '4': 1, '5': 9, '10': 'callbackUrl'},
    {'1': 'callback_url_param', '3': 2, '4': 1, '5': 9, '10': 'callbackUrlParam'},
    {'1': 'callback_url_data', '3': 3, '4': 1, '5': 9, '10': 'callbackUrlData'},
  ],
};

/// Descriptor for `Auth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDescriptor = $convert.base64Decode(
    'CgRBdXRoEjcKDGF1dGhfbWV0aG9kcxgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSC2F1dG'
    'hNZXRob2RzGtcBCghGb3JtRGF0YRI9Cgpmb3JtX2l0ZW1zGAEgAygLMh4ucGx1Z2luLkF1dGgu'
    'Rm9ybURhdGEuRm9ybUl0ZW1SCWZvcm1JdGVtcxqLAQoIRm9ybUl0ZW0SEgoEbmFtZRgBIAEoCV'
    'IEbmFtZRIqCgV2YWx1ZRgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlEj8KC2Vu'
    'dW1fdmFsdWVzGAMgAygLMh4ucGx1Z2luLkF1dGguRm9ybURhdGEuRm9ybUl0ZW1SCmVudW1WYW'
    'x1ZXMaiwEKClNjYW5RcmNvZGUSIQoMcXJjb2RlX2ltYWdlGAEgASgMUgtxcmNvZGVJbWFnZRIs'
    'ChJxcmNvZGVfaW1hZ2VfcGFyYW0YAiABKAlSEHFyY29kZUltYWdlUGFyYW0SLAoScXJjb2RlX2'
    'V4cGlyZV90aW1lGAMgASgEUhBxcmNvZGVFeHBpcmVUaW1lGocBCghDYWxsYmFjaxIhCgxjYWxs'
    'YmFja191cmwYASABKAlSC2NhbGxiYWNrVXJsEiwKEmNhbGxiYWNrX3VybF9wYXJhbRgCIAEoCV'
    'IQY2FsbGJhY2tVcmxQYXJhbRIqChFjYWxsYmFja191cmxfZGF0YRgDIAEoCVIPY2FsbGJhY2tV'
    'cmxEYXRh');

@$core.Deprecated('Use fileEntryDescriptor instead')
const FileEntry$json = {
  '1': 'FileEntry',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'file_type', '3': 2, '4': 1, '5': 14, '6': '.plugin.FileEntry.FileType', '10': 'fileType'},
    {'1': 'size', '3': 3, '4': 1, '5': 4, '10': 'size'},
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
    'VnaW4uRmlsZUVudHJ5LkZpbGVUeXBlUghmaWxlVHlwZRISCgRzaXplGAMgASgEUgRzaXplEiEK'
    'DGNyZWF0ZWRfdGltZRgKIAEoBFILY3JlYXRlZFRpbWUSIwoNbW9kaWZpZWRfdGltZRgLIAEoBF'
    'IMbW9kaWZpZWRUaW1lEiMKDWFjY2Vzc2VkX3RpbWUYDCABKARSDGFjY2Vzc2VkVGltZSJYCghG'
    'aWxlVHlwZRIXChNGaWxlVHlwZVVOU1BFQ0lGSUVEEAASDwoLRmlsZVR5cGVEaXIQARIQCgxGaW'
    'xlVHlwZUZpbGUQAhIQCgxGaWxlVHlwZUxpbmsQAw==');

@$core.Deprecated('Use dirEntryDescriptor instead')
const DirEntry$json = {
  '1': 'DirEntry',
  '2': [
    {'1': 'file_entries', '3': 1, '4': 3, '5': 11, '6': '.plugin.FileEntry', '10': 'fileEntries'},
  ],
};

/// Descriptor for `DirEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dirEntryDescriptor = $convert.base64Decode(
    'CghEaXJFbnRyeRI0CgxmaWxlX2VudHJpZXMYASADKAsyES5wbHVnaW4uRmlsZUVudHJ5UgtmaW'
    'xlRW50cmllcw==');

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource$json = {
  '1': 'FileResource',
  '2': [
    {'1': 'file_resource_data', '3': 1, '4': 3, '5': 11, '6': '.plugin.FileResource.FileResourceData', '10': 'fileResourceData'},
  ],
  '3': [FileResource_FileResourceData$json],
  '4': [FileResource_Resolution$json, FileResource_ResourceType$json],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_FileResourceData$json = {
  '1': 'FileResourceData',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'resolution', '3': 2, '4': 1, '5': 14, '6': '.plugin.FileResource.Resolution', '10': 'resolution'},
    {'1': 'expire_time', '3': 3, '4': 1, '5': 4, '10': 'expireTime'},
    {'1': 'resource_type', '3': 4, '4': 1, '5': 14, '6': '.plugin.FileResource.ResourceType', '10': 'resourceType'},
    {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    {'1': 'header', '3': 6, '4': 3, '5': 11, '6': '.plugin.FileResource.FileResourceData.HeaderEntry', '10': 'header'},
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
    'VSZXNvdXJjZS5GaWxlUmVzb3VyY2VEYXRhUhBmaWxlUmVzb3VyY2VEYXRhGuoCChBGaWxlUmVz'
    'b3VyY2VEYXRhEhAKA3VybBgBIAEoCVIDdXJsEj8KCnJlc29sdXRpb24YAiABKA4yHy5wbHVnaW'
    '4uRmlsZVJlc291cmNlLlJlc29sdXRpb25SCnJlc29sdXRpb24SHwoLZXhwaXJlX3RpbWUYAyAB'
    'KARSCmV4cGlyZVRpbWUSRgoNcmVzb3VyY2VfdHlwZRgEIAEoDjIhLnBsdWdpbi5GaWxlUmVzb3'
    'VyY2UuUmVzb3VyY2VUeXBlUgxyZXNvdXJjZVR5cGUSFAoFdGl0bGUYBSABKAlSBXRpdGxlEkkK'
    'BmhlYWRlchgGIAMoCzIxLnBsdWdpbi5GaWxlUmVzb3VyY2UuRmlsZVJlc291cmNlRGF0YS5IZW'
    'FkZXJFbnRyeVIGaGVhZGVyGjkKC0hlYWRlckVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZh'
    'bHVlGAIgASgJUgV2YWx1ZToCOAEiaAoKUmVzb2x1dGlvbhIZChVSZXNvbHV0aW9uVU5TUEVDSU'
    'ZJRUQQABIMCghPcmlnaW5hbBABEgYKAkxEEAISBgoCU0QQAxIGCgJIRBAEEgcKA0ZIRBAFEgcK'
    'A1FIRBAGEgcKA1VIRBAHIk8KDFJlc291cmNlVHlwZRIbChdSZXNvdXJjZVR5cGVVTlNQRUNJRk'
    'lFRBAAEgkKBVZpZGVvEAESDAoIU3VidGl0bGUQAhIJCgVBdWRpbxAD');

@$core.Deprecated('Use authDataDescriptor instead')
const AuthData$json = {
  '1': 'AuthData',
  '2': [
    {'1': 'auth_data', '3': 1, '4': 1, '5': 12, '10': 'authData'},
    {'1': 'expired_time', '3': 2, '4': 1, '5': 4, '10': 'expiredTime'},
  ],
};

/// Descriptor for `AuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDataDescriptor = $convert.base64Decode(
    'CghBdXRoRGF0YRIbCglhdXRoX2RhdGEYASABKAxSCGF1dGhEYXRhEiEKDGV4cGlyZWRfdGltZR'
    'gCIAEoBFILZXhwaXJlZFRpbWU=');

