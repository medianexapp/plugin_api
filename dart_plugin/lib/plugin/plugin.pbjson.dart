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

@$core.Deprecated('Use formdataDescriptor instead')
const Formdata$json = {
  '1': 'Formdata',
  '2': [
    {'1': 'form_items', '3': 11, '4': 3, '5': 11, '6': '.plugin.Formdata.FormItem', '10': 'formItems'},
  ],
  '3': [Formdata_FormItem$json],
};

@$core.Deprecated('Use formdataDescriptor instead')
const Formdata_FormItem$json = {
  '1': 'FormItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'double_value', '3': 2, '4': 1, '5': 11, '6': '.plugin.DoubleValue', '9': 0, '10': 'doubleValue'},
    {'1': 'int64_value', '3': 3, '4': 1, '5': 11, '6': '.plugin.Int64Value', '9': 0, '10': 'int64Value'},
    {'1': 'bool_value', '3': 4, '4': 1, '5': 11, '6': '.plugin.BoolValue', '9': 0, '10': 'boolValue'},
    {'1': 'string_value', '3': 5, '4': 1, '5': 11, '6': '.plugin.StringValue', '9': 0, '10': 'stringValue'},
    {'1': 'obscure_string_value', '3': 6, '4': 1, '5': 11, '6': '.plugin.ObscureStringValue', '9': 0, '10': 'obscureStringValue'},
    {'1': 'dir_path_value', '3': 7, '4': 1, '5': 11, '6': '.plugin.DirPathValue', '9': 0, '10': 'dirPathValue'},
    {'1': 'file_path_value', '3': 8, '4': 1, '5': 11, '6': '.plugin.FilePathValue', '9': 0, '10': 'filePathValue'},
    {'1': 'enum_values', '3': 10, '4': 3, '5': 11, '6': '.plugin.Formdata.FormItem', '10': 'enumValues'},
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
    {'1': 'qrcode_image_param', '3': 2, '4': 1, '5': 9, '10': 'qrcodeImageParam'},
    {'1': 'qrcode_expire_time', '3': 3, '4': 1, '5': 4, '10': 'qrcodeExpireTime'},
  ],
};

/// Descriptor for `Scanqrcode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanqrcodeDescriptor = $convert.base64Decode(
    'CgpTY2FucXJjb2RlEiEKDHFyY29kZV9pbWFnZRgBIAEoDFILcXJjb2RlSW1hZ2USLAoScXJjb2'
    'RlX2ltYWdlX3BhcmFtGAIgASgJUhBxcmNvZGVJbWFnZVBhcmFtEiwKEnFyY29kZV9leHBpcmVf'
    'dGltZRgDIAEoBFIQcXJjb2RlRXhwaXJlVGltZQ==');

@$core.Deprecated('Use callbackDescriptor instead')
const Callback$json = {
  '1': 'Callback',
  '2': [
    {'1': 'callback_url', '3': 1, '4': 1, '5': 9, '10': 'callbackUrl'},
    {'1': 'callback_url_param', '3': 2, '4': 1, '5': 9, '10': 'callbackUrlParam'},
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
    {'1': 'auth_data', '3': 1, '4': 1, '5': 11, '6': '.plugin.AuthData', '10': 'authData'},
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
    {'1': 'formdata', '3': 1, '4': 1, '5': 11, '6': '.plugin.Formdata', '9': 0, '10': 'formdata'},
    {'1': 'scanqrcode', '3': 2, '4': 1, '5': 11, '6': '.plugin.Scanqrcode', '9': 0, '10': 'scanqrcode'},
    {'1': 'callback', '3': 3, '4': 1, '5': 11, '6': '.plugin.Callback', '9': 0, '10': 'callback'},
    {'1': 'refresh', '3': 4, '4': 1, '5': 11, '6': '.plugin.Refresh', '9': 0, '10': 'refresh'},
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
    'JlZnJlc2gYBCABKAsyDy5wbHVnaW4uUmVmcmVzaEgAUgdyZWZyZXNoQggKBm1ldGhvZA==');

@$core.Deprecated('Use authDescriptor instead')
const Auth$json = {
  '1': 'Auth',
  '2': [
    {'1': 'auth_methods', '3': 1, '4': 3, '5': 11, '6': '.plugin.AuthMethod', '10': 'authMethods'},
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
    {'1': 'file_type', '3': 2, '4': 1, '5': 14, '6': '.plugin.FileEntry.FileType', '10': 'fileType'},
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
    {'1': 'file_entries', '3': 1, '4': 3, '5': 11, '6': '.plugin.FileEntry', '10': 'fileEntries'},
    {'1': 'dir_entry_key', '3': 10, '4': 1, '5': 9, '10': 'dirEntryKey'},
    {'1': 'max_page_size', '3': 11, '4': 1, '5': 4, '10': 'maxPageSize'},
  ],
};

/// Descriptor for `DirEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dirEntryDescriptor = $convert.base64Decode(
    'CghEaXJFbnRyeRI0CgxmaWxlX2VudHJpZXMYASADKAsyES5wbHVnaW4uRmlsZUVudHJ5UgtmaW'
    'xlRW50cmllcxIiCg1kaXJfZW50cnlfa2V5GAogASgJUgtkaXJFbnRyeUtleRIiCg1tYXhfcGFn'
    'ZV9zaXplGAsgASgEUgttYXhQYWdlU2l6ZQ==');

@$core.Deprecated('Use getDirEntryRequestDescriptor instead')
const GetDirEntryRequest$json = {
  '1': 'GetDirEntryRequest',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'page', '3': 3, '4': 1, '5': 4, '10': 'page'},
    {'1': 'page_size', '3': 4, '4': 1, '5': 4, '10': 'pageSize'},
    {'1': 'dir_entry_key', '3': 10, '4': 1, '5': 9, '10': 'dirEntryKey'},
    {'1': 'file_entry', '3': 11, '4': 1, '5': 11, '6': '.plugin.FileEntry', '10': 'fileEntry'},
  ],
};

/// Descriptor for `GetDirEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDirEntryRequestDescriptor = $convert.base64Decode(
    'ChJHZXREaXJFbnRyeVJlcXVlc3QSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgRwYWdlGAMgASgEUg'
    'RwYWdlEhsKCXBhZ2Vfc2l6ZRgEIAEoBFIIcGFnZVNpemUSIgoNZGlyX2VudHJ5X2tleRgKIAEo'
    'CVILZGlyRW50cnlLZXkSMAoKZmlsZV9lbnRyeRgLIAEoCzIRLnBsdWdpbi5GaWxlRW50cnlSCW'
    'ZpbGVFbnRyeQ==');

@$core.Deprecated('Use getFileResourceRequestDescriptor instead')
const GetFileResourceRequest$json = {
  '1': 'GetFileResourceRequest',
  '2': [
    {'1': 'file_path', '3': 1, '4': 1, '5': 9, '10': 'filePath'},
    {'1': 'file_entry', '3': 10, '4': 1, '5': 11, '6': '.plugin.FileEntry', '10': 'fileEntry'},
  ],
};

/// Descriptor for `GetFileResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileResourceRequestDescriptor = $convert.base64Decode(
    'ChZHZXRGaWxlUmVzb3VyY2VSZXF1ZXN0EhsKCWZpbGVfcGF0aBgBIAEoCVIIZmlsZVBhdGgSMA'
    'oKZmlsZV9lbnRyeRgKIAEoCzIRLnBsdWdpbi5GaWxlRW50cnlSCWZpbGVFbnRyeQ==');

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
    {'1': 'auth_data_bytes', '3': 1, '4': 1, '5': 12, '10': 'authDataBytes'},
    {'1': 'auth_data_expired_time', '3': 2, '4': 1, '5': 4, '10': 'authDataExpiredTime'},
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

