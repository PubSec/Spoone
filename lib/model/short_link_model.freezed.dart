// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShortLinkModel _$ShortLinkModelFromJson(Map<String, dynamic> json) {
  return _ShortLinkModel.fromJson(json);
}

/// @nodoc
mixin _$ShortLinkModel {
  String get short_url => throw _privateConstructorUsedError;

  /// Serializes this ShortLinkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShortLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShortLinkModelCopyWith<ShortLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortLinkModelCopyWith<$Res> {
  factory $ShortLinkModelCopyWith(
          ShortLinkModel value, $Res Function(ShortLinkModel) then) =
      _$ShortLinkModelCopyWithImpl<$Res, ShortLinkModel>;
  @useResult
  $Res call({String short_url});
}

/// @nodoc
class _$ShortLinkModelCopyWithImpl<$Res, $Val extends ShortLinkModel>
    implements $ShortLinkModelCopyWith<$Res> {
  _$ShortLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShortLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short_url = null,
  }) {
    return _then(_value.copyWith(
      short_url: null == short_url
          ? _value.short_url
          : short_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortLinkModelImplCopyWith<$Res>
    implements $ShortLinkModelCopyWith<$Res> {
  factory _$$ShortLinkModelImplCopyWith(_$ShortLinkModelImpl value,
          $Res Function(_$ShortLinkModelImpl) then) =
      __$$ShortLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String short_url});
}

/// @nodoc
class __$$ShortLinkModelImplCopyWithImpl<$Res>
    extends _$ShortLinkModelCopyWithImpl<$Res, _$ShortLinkModelImpl>
    implements _$$ShortLinkModelImplCopyWith<$Res> {
  __$$ShortLinkModelImplCopyWithImpl(
      _$ShortLinkModelImpl _value, $Res Function(_$ShortLinkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShortLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short_url = null,
  }) {
    return _then(_$ShortLinkModelImpl(
      null == short_url
          ? _value.short_url
          : short_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortLinkModelImpl implements _ShortLinkModel {
  const _$ShortLinkModelImpl(this.short_url);

  factory _$ShortLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortLinkModelImplFromJson(json);

  @override
  final String short_url;

  @override
  String toString() {
    return 'ShortLinkModel(short_url: $short_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortLinkModelImpl &&
            (identical(other.short_url, short_url) ||
                other.short_url == short_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, short_url);

  /// Create a copy of ShortLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortLinkModelImplCopyWith<_$ShortLinkModelImpl> get copyWith =>
      __$$ShortLinkModelImplCopyWithImpl<_$ShortLinkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortLinkModelImplToJson(
      this,
    );
  }
}

abstract class _ShortLinkModel implements ShortLinkModel {
  const factory _ShortLinkModel(final String short_url) = _$ShortLinkModelImpl;

  factory _ShortLinkModel.fromJson(Map<String, dynamic> json) =
      _$ShortLinkModelImpl.fromJson;

  @override
  String get short_url;

  /// Create a copy of ShortLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortLinkModelImplCopyWith<_$ShortLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
