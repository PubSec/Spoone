import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_link_model.freezed.dart';
part 'short_link_model.g.dart';

/// The response of the `POST /` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class ShortLinkModel with _$ShortLinkModel {
  const factory ShortLinkModel({
    // ignore: non_constant_identifier_names
    required String short_url,
  }) = _ShortLinkModel;

  /// Convert a JSON object into an [ShortLinkModel Instance] instance.
  /// This enables type-safe reading of the API response.
  factory ShortLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ShortLinkModelFromJson(json);
}
