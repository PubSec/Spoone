// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkStatsModelImpl _$$LinkStatsModelImplFromJson(Map<String, dynamic> json) =>
    _$LinkStatsModelImpl(
      (json['average_daily_clicks'] as num?)?.toDouble(),
      (json['average_monthly_clicks'] as num?)?.toDouble(),
      (json['average_weekly_clicks'] as num?)?.toDouble(),
      json['bots'] as Map<String, dynamic>?,
      json['url'] as String?,
      json['unique_counter'] as Map<String, dynamic>?,
      json['unique_country'] as Map<String, dynamic>?,
      json['unique_browser'] as Map<String, dynamic>?,
      json['unique_os_name'] as Map<String, dynamic>?,
      json['password'] as String?,
      json['UrlError'] as String?,
      json['PasswordError'] as String?,
      json['expired'] as bool?,
    );

Map<String, dynamic> _$$LinkStatsModelImplToJson(
        _$LinkStatsModelImpl instance) =>
    <String, dynamic>{
      'average_daily_clicks': instance.average_daily_clicks,
      'average_monthly_clicks': instance.average_monthly_clicks,
      'average_weekly_clicks': instance.average_weekly_clicks,
      'bots': instance.bots,
      'url': instance.url,
      'unique_counter': instance.unique_counter,
      'unique_country': instance.unique_country,
      'unique_browser': instance.unique_browser,
      'unique_os_name': instance.unique_os_name,
      'password': instance.password,
      'UrlError': instance.UrlError,
      'PasswordError': instance.PasswordError,
      'expired': instance.expired,
    };
