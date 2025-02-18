// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_stats_model.freezed.dart';
part 'link_stats_model.g.dart';

@freezed
class LinkStatsModel with _$LinkStatsModel {
  const factory LinkStatsModel(
    double? average_daily_clicks,
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
    bool? expired,
  ) = _LinkStatsModel;

  factory LinkStatsModel.fromJson(Map<String, dynamic> json) =>
      _$LinkStatsModelFromJson(json);
}
