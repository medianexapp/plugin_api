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

@$core.Deprecated('Use authStatusDescriptor instead')
const AuthStatus$json = {
  '1': 'AuthStatus',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'AuthNone', '2': 1},
    {'1': 'AuthPending', '2': 2},
    {'1': 'AuthFailed', '2': 3},
    {'1': 'AuthSuccess', '2': 4},
  ],
};

/// Descriptor for `AuthStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List authStatusDescriptor = $convert.base64Decode(
    'CgpBdXRoU3RhdHVzEg8KC1VOU1BFQ0lGSUVEEAASDAoIQXV0aE5vbmUQARIPCgtBdXRoUGVuZG'
    'luZxACEg4KCkF1dGhGYWlsZWQQAxIPCgtBdXRoU3VjY2VzcxAE');

@$core.Deprecated('Use authTypeDescriptor instead')
const AuthType$json = {
  '1': 'AuthType',
  '2': [
    {'1': 'use_form', '3': 1, '4': 1, '5': 8, '10': 'useForm'},
    {'1': 'forms', '3': 2, '4': 3, '5': 11, '6': '.plugin.AuthType.FormData', '10': 'forms'},
    {'1': 'use_qrcode', '3': 3, '4': 1, '5': 8, '10': 'useQrcode'},
    {'1': 'qrcode_image', '3': 4, '4': 1, '5': 12, '10': 'qrcodeImage'},
    {'1': 'qrcode_expire_time', '3': 5, '4': 1, '5': 4, '10': 'qrcodeExpireTime'},
    {'1': 'use_oauth', '3': 6, '4': 1, '5': 8, '10': 'useOauth'},
    {'1': 'oauth_url', '3': 7, '4': 1, '5': 9, '10': 'oauthUrl'},
    {'1': 'oauth_callback_data', '3': 8, '4': 1, '5': 12, '10': 'oauthCallbackData'},
  ],
  '3': [AuthType_FormData$json],
};

@$core.Deprecated('Use authTypeDescriptor instead')
const AuthType_FormData$json = {
  '1': 'FormData',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
    {'1': 'enum_form_data', '3': 5, '4': 3, '5': 11, '6': '.plugin.AuthType.FormData', '10': 'enumFormData'},
  ],
};

/// Descriptor for `AuthType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authTypeDescriptor = $convert.base64Decode(
    'CghBdXRoVHlwZRIZCgh1c2VfZm9ybRgBIAEoCFIHdXNlRm9ybRIvCgVmb3JtcxgCIAMoCzIZLn'
    'BsdWdpbi5BdXRoVHlwZS5Gb3JtRGF0YVIFZm9ybXMSHQoKdXNlX3FyY29kZRgDIAEoCFIJdXNl'
    'UXJjb2RlEiEKDHFyY29kZV9pbWFnZRgEIAEoDFILcXJjb2RlSW1hZ2USLAoScXJjb2RlX2V4cG'
    'lyZV90aW1lGAUgASgEUhBxcmNvZGVFeHBpcmVUaW1lEhsKCXVzZV9vYXV0aBgGIAEoCFIIdXNl'
    'T2F1dGgSGwoJb2F1dGhfdXJsGAcgASgJUghvYXV0aFVybBIuChNvYXV0aF9jYWxsYmFja19kYX'
    'RhGAggASgMUhFvYXV0aENhbGxiYWNrRGF0YRqhAQoIRm9ybURhdGESEgoEbmFtZRgBIAEoCVIE'
    'bmFtZRIUCgVsYWJlbBgCIAEoCVIFbGFiZWwSKgoFdmFsdWUYAyABKAsyFC5nb29nbGUucHJvdG'
    '9idWYuQW55UgV2YWx1ZRI/Cg5lbnVtX2Zvcm1fZGF0YRgFIAMoCzIZLnBsdWdpbi5BdXRoVHlw'
    'ZS5Gb3JtRGF0YVIMZW51bUZvcm1EYXRh');

@$core.Deprecated('Use fileEntryDescriptor instead')
const FileEntry$json = {
  '1': 'FileEntry',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fileType', '3': 2, '4': 1, '5': 14, '6': '.plugin.FileEntry.FileType', '10': 'fileType'},
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
    'CglGaWxlRW50cnkSEgoEbmFtZRgBIAEoCVIEbmFtZRI2CghmaWxlVHlwZRgCIAEoDjIaLnBsdW'
    'dpbi5GaWxlRW50cnkuRmlsZVR5cGVSCGZpbGVUeXBlEhIKBHNpemUYAyABKARSBHNpemUSIQoM'
    'Y3JlYXRlZF90aW1lGAogASgEUgtjcmVhdGVkVGltZRIjCg1tb2RpZmllZF90aW1lGAsgASgEUg'
    'xtb2RpZmllZFRpbWUSIwoNYWNjZXNzZWRfdGltZRgMIAEoBFIMYWNjZXNzZWRUaW1lIlgKCEZp'
    'bGVUeXBlEhcKE0ZpbGVUeXBlVU5TUEVDSUZJRUQQABIPCgtGaWxlVHlwZURpchABEhAKDEZpbG'
    'VUeXBlRmlsZRACEhAKDEZpbGVUeXBlTGluaxAD');

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
  '4': [FileResource_VideoResolution$json, FileResource_ResourceType$json],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_FileResourceData$json = {
  '1': 'FileResourceData',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'video_resolution', '3': 2, '4': 1, '5': 14, '6': '.plugin.FileResource.VideoResolution', '10': 'videoResolution'},
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
const FileResource_VideoResolution$json = {
  '1': 'VideoResolution',
  '2': [
    {'1': 'Unspecified', '2': 0},
    {'1': 'Original', '2': 1},
    {'1': 'SD', '2': 2},
    {'1': 'HD', '2': 3},
    {'1': 'FHD', '2': 4},
    {'1': 'QHD', '2': 5},
    {'1': 'UHD', '2': 6},
  ],
};

@$core.Deprecated('Use fileResourceDescriptor instead')
const FileResource_ResourceType$json = {
  '1': 'ResourceType',
  '2': [
    {'1': 'MediaResourceTypeUNSPECIFIED', '2': 0},
    {'1': 'Video', '2': 1},
    {'1': 'Subtitle', '2': 2},
    {'1': 'Audio', '2': 3},
  ],
};

/// Descriptor for `FileResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileResourceDescriptor = $convert.base64Decode(
    'CgxGaWxlUmVzb3VyY2USUwoSZmlsZV9yZXNvdXJjZV9kYXRhGAEgAygLMiUucGx1Z2luLkZpbG'
    'VSZXNvdXJjZS5GaWxlUmVzb3VyY2VEYXRhUhBmaWxlUmVzb3VyY2VEYXRhGvoCChBGaWxlUmVz'
    'b3VyY2VEYXRhEhAKA3VybBgBIAEoCVIDdXJsEk8KEHZpZGVvX3Jlc29sdXRpb24YAiABKA4yJC'
    '5wbHVnaW4uRmlsZVJlc291cmNlLlZpZGVvUmVzb2x1dGlvblIPdmlkZW9SZXNvbHV0aW9uEh8K'
    'C2V4cGlyZV90aW1lGAMgASgEUgpleHBpcmVUaW1lEkYKDXJlc291cmNlX3R5cGUYBCABKA4yIS'
    '5wbHVnaW4uRmlsZVJlc291cmNlLlJlc291cmNlVHlwZVIMcmVzb3VyY2VUeXBlEhQKBXRpdGxl'
    'GAUgASgJUgV0aXRsZRJJCgZoZWFkZXIYBiADKAsyMS5wbHVnaW4uRmlsZVJlc291cmNlLkZpbG'
    'VSZXNvdXJjZURhdGEuSGVhZGVyRW50cnlSBmhlYWRlcho5CgtIZWFkZXJFbnRyeRIQCgNrZXkY'
    'ASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBIlsKD1ZpZGVvUmVzb2x1dGlvbh'
    'IPCgtVbnNwZWNpZmllZBAAEgwKCE9yaWdpbmFsEAESBgoCU0QQAhIGCgJIRBADEgcKA0ZIRBAE'
    'EgcKA1FIRBAFEgcKA1VIRBAGIlQKDFJlc291cmNlVHlwZRIgChxNZWRpYVJlc291cmNlVHlwZV'
    'VOU1BFQ0lGSUVEEAASCQoFVmlkZW8QARIMCghTdWJ0aXRsZRACEgkKBUF1ZGlvEAM=');

