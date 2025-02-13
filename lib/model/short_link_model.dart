import 'package:freezed_annotation/freezed_annotation.dart';

// class  {
//   Response response;

//   ShortLinkModel({required this.response});

//   String getAlias() {
//     dynamic data = jsonDecode(response.body);
//     String shortUrl = data['short_url'];
//     int idx = shortUrl.lastIndexOf('/');
//     String alias = shortUrl.substring(idx + 1);
//     return alias;
//   }

//   Widget getQRCode() {
//     dynamic data = jsonDecode(response.body);
//     dynamic result = PrettyQrView.data(data: data['short_url']);
//     return result;
//   }
// }

part 'short_link_model.freezed.dart';
part 'short_link_model.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class ShortLinkModel with _$ShortLinkModel {
  const factory ShortLinkModel({
    required String short_url,
  }) = _ShortLinkModel;

  /// Convert a JSON object into an [ShortLinkModel Instance] instance.
  /// This enables type-safe reading of the API response.
  factory ShortLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ShortLinkModelFromJson(json);
}
