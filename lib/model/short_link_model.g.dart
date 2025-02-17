// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShortLinkModelImpl _$$ShortLinkModelImplFromJson(Map<String, dynamic> json) =>
    _$ShortLinkModelImpl(
      json['short_url'] as String?,
      json['UrlError'] as String?,
      json['AliasError'] as String?,
      json['PasswordError'] as String?,
      json['MaxClicksError'] as String?,
    );

Map<String, dynamic> _$$ShortLinkModelImplToJson(
        _$ShortLinkModelImpl instance) =>
    <String, dynamic>{
      'short_url': instance.short_url,
      'UrlError': instance.UrlError,
      'AliasError': instance.AliasError,
      'PasswordError': instance.PasswordError,
      'MaxClicksError': instance.MaxClicksError,
    };
