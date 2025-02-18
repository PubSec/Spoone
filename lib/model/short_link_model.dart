// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_link_model.freezed.dart';
part 'short_link_model.g.dart';

/// The response of the `POST /` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class ShortLinkModel with _$ShortLinkModel {
  const factory ShortLinkModel(
    String? short_url,
    String? UrlError,
    String? AliasError,
    String? PasswordError,
    String? MaxClicksError,
  ) = _ShortLinkModel;

  /// Convert a JSON object into an [ShortLinkModel Instance] instance.
  /// This enables type-safe reading of the API response.
  factory ShortLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ShortLinkModelFromJson(json);
}
