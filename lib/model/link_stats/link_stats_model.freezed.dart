// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkStatsModel _$LinkStatsModelFromJson(Map<String, dynamic> json) {
  return _LinkStatsModel.fromJson(json);
}

/// @nodoc
mixin _$LinkStatsModel {
  double? get average_daily_clicks => throw _privateConstructorUsedError;
  double? get average_monthly_clicks => throw _privateConstructorUsedError;
  double? get average_weekly_clicks => throw _privateConstructorUsedError;
  Map<String, dynamic>? get bots => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get unique_counter =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get unique_country =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get unique_browser =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get unique_os_name =>
      throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get UrlError => throw _privateConstructorUsedError;
  String? get PasswordError => throw _privateConstructorUsedError;
  bool? get expired => throw _privateConstructorUsedError;

  /// Serializes this LinkStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkStatsModelCopyWith<LinkStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkStatsModelCopyWith<$Res> {
  factory $LinkStatsModelCopyWith(
          LinkStatsModel value, $Res Function(LinkStatsModel) then) =
      _$LinkStatsModelCopyWithImpl<$Res, LinkStatsModel>;
  @useResult
  $Res call(
      {double? average_daily_clicks,
      double? average_monthly_clicks,
      double? average_weekly_clicks,
      Map<String, dynamic>? bots,
      String? url,
      Map<String, dynamic>? unique_counter,
      Map<String, dynamic>? unique_country,
      Map<String, dynamic>? unique_browser,
      Map<String, dynamic>? unique_os_name,
      String? password,
      String? UrlError,
      String? PasswordError,
      bool? expired});
}

/// @nodoc
class _$LinkStatsModelCopyWithImpl<$Res, $Val extends LinkStatsModel>
    implements $LinkStatsModelCopyWith<$Res> {
  _$LinkStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average_daily_clicks = freezed,
    Object? average_monthly_clicks = freezed,
    Object? average_weekly_clicks = freezed,
    Object? bots = freezed,
    Object? url = freezed,
    Object? unique_counter = freezed,
    Object? unique_country = freezed,
    Object? unique_browser = freezed,
    Object? unique_os_name = freezed,
    Object? password = freezed,
    Object? UrlError = freezed,
    Object? PasswordError = freezed,
    Object? expired = freezed,
  }) {
    return _then(_value.copyWith(
      average_daily_clicks: freezed == average_daily_clicks
          ? _value.average_daily_clicks
          : average_daily_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      average_monthly_clicks: freezed == average_monthly_clicks
          ? _value.average_monthly_clicks
          : average_monthly_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      average_weekly_clicks: freezed == average_weekly_clicks
          ? _value.average_weekly_clicks
          : average_weekly_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      bots: freezed == bots
          ? _value.bots
          : bots // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      unique_counter: freezed == unique_counter
          ? _value.unique_counter
          : unique_counter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      unique_country: freezed == unique_country
          ? _value.unique_country
          : unique_country // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      unique_browser: freezed == unique_browser
          ? _value.unique_browser
          : unique_browser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      unique_os_name: freezed == unique_os_name
          ? _value.unique_os_name
          : unique_os_name // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      UrlError: freezed == UrlError
          ? _value.UrlError
          : UrlError // ignore: cast_nullable_to_non_nullable
              as String?,
      PasswordError: freezed == PasswordError
          ? _value.PasswordError
          : PasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkStatsModelImplCopyWith<$Res>
    implements $LinkStatsModelCopyWith<$Res> {
  factory _$$LinkStatsModelImplCopyWith(_$LinkStatsModelImpl value,
          $Res Function(_$LinkStatsModelImpl) then) =
      __$$LinkStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? average_daily_clicks,
      double? average_monthly_clicks,
      double? average_weekly_clicks,
      Map<String, dynamic>? bots,
      String? url,
      Map<String, dynamic>? unique_counter,
      Map<String, dynamic>? unique_country,
      Map<String, dynamic>? unique_browser,
      Map<String, dynamic>? unique_os_name,
      String? password,
      String? UrlError,
      String? PasswordError,
      bool? expired});
}

/// @nodoc
class __$$LinkStatsModelImplCopyWithImpl<$Res>
    extends _$LinkStatsModelCopyWithImpl<$Res, _$LinkStatsModelImpl>
    implements _$$LinkStatsModelImplCopyWith<$Res> {
  __$$LinkStatsModelImplCopyWithImpl(
      _$LinkStatsModelImpl _value, $Res Function(_$LinkStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average_daily_clicks = freezed,
    Object? average_monthly_clicks = freezed,
    Object? average_weekly_clicks = freezed,
    Object? bots = freezed,
    Object? url = freezed,
    Object? unique_counter = freezed,
    Object? unique_country = freezed,
    Object? unique_browser = freezed,
    Object? unique_os_name = freezed,
    Object? password = freezed,
    Object? UrlError = freezed,
    Object? PasswordError = freezed,
    Object? expired = freezed,
  }) {
    return _then(_$LinkStatsModelImpl(
      freezed == average_daily_clicks
          ? _value.average_daily_clicks
          : average_daily_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == average_monthly_clicks
          ? _value.average_monthly_clicks
          : average_monthly_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == average_weekly_clicks
          ? _value.average_weekly_clicks
          : average_weekly_clicks // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == bots
          ? _value._bots
          : bots // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == unique_counter
          ? _value._unique_counter
          : unique_counter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == unique_country
          ? _value._unique_country
          : unique_country // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == unique_browser
          ? _value._unique_browser
          : unique_browser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == unique_os_name
          ? _value._unique_os_name
          : unique_os_name // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == UrlError
          ? _value.UrlError
          : UrlError // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == PasswordError
          ? _value.PasswordError
          : PasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkStatsModelImpl implements _LinkStatsModel {
  const _$LinkStatsModelImpl(
      this.average_daily_clicks,
      this.average_monthly_clicks,
      this.average_weekly_clicks,
      final Map<String, dynamic>? bots,
      this.url,
      final Map<String, dynamic>? unique_counter,
      final Map<String, dynamic>? unique_country,
      final Map<String, dynamic>? unique_browser,
      final Map<String, dynamic>? unique_os_name,
      this.password,
      this.UrlError,
      this.PasswordError,
      this.expired)
      : _bots = bots,
        _unique_counter = unique_counter,
        _unique_country = unique_country,
        _unique_browser = unique_browser,
        _unique_os_name = unique_os_name;

  factory _$LinkStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkStatsModelImplFromJson(json);

  @override
  final double? average_daily_clicks;
  @override
  final double? average_monthly_clicks;
  @override
  final double? average_weekly_clicks;
  final Map<String, dynamic>? _bots;
  @override
  Map<String, dynamic>? get bots {
    final value = _bots;
    if (value == null) return null;
    if (_bots is EqualUnmodifiableMapView) return _bots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? url;
  final Map<String, dynamic>? _unique_counter;
  @override
  Map<String, dynamic>? get unique_counter {
    final value = _unique_counter;
    if (value == null) return null;
    if (_unique_counter is EqualUnmodifiableMapView) return _unique_counter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _unique_country;
  @override
  Map<String, dynamic>? get unique_country {
    final value = _unique_country;
    if (value == null) return null;
    if (_unique_country is EqualUnmodifiableMapView) return _unique_country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _unique_browser;
  @override
  Map<String, dynamic>? get unique_browser {
    final value = _unique_browser;
    if (value == null) return null;
    if (_unique_browser is EqualUnmodifiableMapView) return _unique_browser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _unique_os_name;
  @override
  Map<String, dynamic>? get unique_os_name {
    final value = _unique_os_name;
    if (value == null) return null;
    if (_unique_os_name is EqualUnmodifiableMapView) return _unique_os_name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? password;
  @override
  final String? UrlError;
  @override
  final String? PasswordError;
  @override
  final bool? expired;

  @override
  String toString() {
    return 'LinkStatsModel(average_daily_clicks: $average_daily_clicks, average_monthly_clicks: $average_monthly_clicks, average_weekly_clicks: $average_weekly_clicks, bots: $bots, url: $url, unique_counter: $unique_counter, unique_country: $unique_country, unique_browser: $unique_browser, unique_os_name: $unique_os_name, password: $password, UrlError: $UrlError, PasswordError: $PasswordError, expired: $expired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkStatsModelImpl &&
            (identical(other.average_daily_clicks, average_daily_clicks) ||
                other.average_daily_clicks == average_daily_clicks) &&
            (identical(other.average_monthly_clicks, average_monthly_clicks) ||
                other.average_monthly_clicks == average_monthly_clicks) &&
            (identical(other.average_weekly_clicks, average_weekly_clicks) ||
                other.average_weekly_clicks == average_weekly_clicks) &&
            const DeepCollectionEquality().equals(other._bots, _bots) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._unique_counter, _unique_counter) &&
            const DeepCollectionEquality()
                .equals(other._unique_country, _unique_country) &&
            const DeepCollectionEquality()
                .equals(other._unique_browser, _unique_browser) &&
            const DeepCollectionEquality()
                .equals(other._unique_os_name, _unique_os_name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.UrlError, UrlError) ||
                other.UrlError == UrlError) &&
            (identical(other.PasswordError, PasswordError) ||
                other.PasswordError == PasswordError) &&
            (identical(other.expired, expired) || other.expired == expired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      average_daily_clicks,
      average_monthly_clicks,
      average_weekly_clicks,
      const DeepCollectionEquality().hash(_bots),
      url,
      const DeepCollectionEquality().hash(_unique_counter),
      const DeepCollectionEquality().hash(_unique_country),
      const DeepCollectionEquality().hash(_unique_browser),
      const DeepCollectionEquality().hash(_unique_os_name),
      password,
      UrlError,
      PasswordError,
      expired);

  /// Create a copy of LinkStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkStatsModelImplCopyWith<_$LinkStatsModelImpl> get copyWith =>
      __$$LinkStatsModelImplCopyWithImpl<_$LinkStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkStatsModelImplToJson(
      this,
    );
  }
}

abstract class _LinkStatsModel implements LinkStatsModel {
  const factory _LinkStatsModel(
      final double? average_daily_clicks,
      final double? average_monthly_clicks,
      final double? average_weekly_clicks,
      final Map<String, dynamic>? bots,
      final String? url,
      final Map<String, dynamic>? unique_counter,
      final Map<String, dynamic>? unique_country,
      final Map<String, dynamic>? unique_browser,
      final Map<String, dynamic>? unique_os_name,
      final String? password,
      final String? UrlError,
      final String? PasswordError,
      final bool? expired) = _$LinkStatsModelImpl;

  factory _LinkStatsModel.fromJson(Map<String, dynamic> json) =
      _$LinkStatsModelImpl.fromJson;

  @override
  double? get average_daily_clicks;
  @override
  double? get average_monthly_clicks;
  @override
  double? get average_weekly_clicks;
  @override
  Map<String, dynamic>? get bots;
  @override
  String? get url;
  @override
  Map<String, dynamic>? get unique_counter;
  @override
  Map<String, dynamic>? get unique_country;
  @override
  Map<String, dynamic>? get unique_browser;
  @override
  Map<String, dynamic>? get unique_os_name;
  @override
  String? get password;
  @override
  String? get UrlError;
  @override
  String? get PasswordError;
  @override
  bool? get expired;

  /// Create a copy of LinkStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkStatsModelImplCopyWith<_$LinkStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
