// This is a generated file - do not edit.
//
// Generated from plugin/wrappers.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Wrapper message for `double`.
class DoubleValue extends $pb.GeneratedMessage {
  factory DoubleValue({
    $core.double? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  DoubleValue._();

  factory DoubleValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleValue copyWith(void Function(DoubleValue) updates) =>
      super.copyWith((message) => updates(message as DoubleValue))
          as DoubleValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleValue create() => DoubleValue._();
  @$core.override
  DoubleValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleValue>(create);
  static DoubleValue? _defaultInstance;

  /// The double value.
  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for `int64`.
class Int64Value extends $pb.GeneratedMessage {
  factory Int64Value({
    $fixnum.Int64? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  Int64Value._();

  factory Int64Value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64Value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64Value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Value copyWith(void Function(Int64Value) updates) =>
      super.copyWith((message) => updates(message as Int64Value)) as Int64Value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Value create() => Int64Value._();
  @$core.override
  Int64Value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64Value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64Value>(create);
  static Int64Value? _defaultInstance;

  /// The int64 value.
  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for `bool`.
class BoolValue extends $pb.GeneratedMessage {
  factory BoolValue({
    $core.bool? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  BoolValue._();

  factory BoolValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolValue copyWith(void Function(BoolValue) updates) =>
      super.copyWith((message) => updates(message as BoolValue)) as BoolValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolValue create() => BoolValue._();
  @$core.override
  BoolValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolValue>(create);
  static BoolValue? _defaultInstance;

  /// The bool value.
  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for `string`.
class StringValue extends $pb.GeneratedMessage {
  factory StringValue({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  StringValue._();

  factory StringValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringValue copyWith(void Function(StringValue) updates) =>
      super.copyWith((message) => updates(message as StringValue))
          as StringValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringValue create() => StringValue._();
  @$core.override
  StringValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringValue>(create);
  static StringValue? _defaultInstance;

  /// The string value.
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for obscure string, input not show,like for input password
class ObscureStringValue extends $pb.GeneratedMessage {
  factory ObscureStringValue({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  ObscureStringValue._();

  factory ObscureStringValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ObscureStringValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ObscureStringValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObscureStringValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ObscureStringValue copyWith(void Function(ObscureStringValue) updates) =>
      super.copyWith((message) => updates(message as ObscureStringValue))
          as ObscureStringValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObscureStringValue create() => ObscureStringValue._();
  @$core.override
  ObscureStringValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ObscureStringValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ObscureStringValue>(create);
  static ObscureStringValue? _defaultInstance;

  /// string value
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for select local path
class DirPathValue extends $pb.GeneratedMessage {
  factory DirPathValue({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  DirPathValue._();

  factory DirPathValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DirPathValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DirPathValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DirPathValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DirPathValue copyWith(void Function(DirPathValue) updates) =>
      super.copyWith((message) => updates(message as DirPathValue))
          as DirPathValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DirPathValue create() => DirPathValue._();
  @$core.override
  DirPathValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DirPathValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DirPathValue>(create);
  static DirPathValue? _defaultInstance;

  /// local path value
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Wrapper message for select local path
class FilePathValue extends $pb.GeneratedMessage {
  factory FilePathValue({
    $core.String? value,
    $core.Iterable<$core.String>? allowExt,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (allowExt != null) result.allowExt.addAll(allowExt);
    return result;
  }

  FilePathValue._();

  factory FilePathValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FilePathValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FilePathValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'plugin'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..pPS(2, _omitFieldNames ? '' : 'allowExt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilePathValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilePathValue copyWith(void Function(FilePathValue) updates) =>
      super.copyWith((message) => updates(message as FilePathValue))
          as FilePathValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilePathValue create() => FilePathValue._();
  @$core.override
  FilePathValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FilePathValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FilePathValue>(create);
  static FilePathValue? _defaultInstance;

  /// local path value
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get allowExt => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
