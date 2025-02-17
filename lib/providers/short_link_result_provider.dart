import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spoone/core/data.dart';
import 'package:spoone/model/short_link_model.dart';

@riverpod
class ShortLinkNorifier extends Notifier<Future<ShortLinkModel>> {
  @override
  Future<ShortLinkModel> build() {
    return Future.value(ShortLinkModel.fromJson({}));
  }

  Future<ShortLinkModel> getLink(
      {required String url,
      required String alias,
      required String password,
      required dynamic maxClicks,
      required bool blockBots}) async {
    if (blockBots) {
      http.Response response = await http.post(
        Uri.parse(baseUrl),
        headers: headers,
        body: {
          "url": url,
          "alias": alias,
          "password": password,
          "max-clicks": maxClicks,
          "block-bots": "True",
        },
      );
      return ShortLinkModel.fromJson(jsonDecode(response.body));
    } else {
      http.Response response = await http.post(
        Uri.parse(baseUrl),
        headers: headers,
        body: {
          "url": url,
          "alias": alias,
          "password": password,
          "max-clicks": maxClicks,
        },
      );
      return ShortLinkModel.fromJson(jsonDecode(response.body));
    }
  }
}

final shortLinkNorifierProvider =
    NotifierProvider<ShortLinkNorifier, Future<ShortLinkModel>>(() {
  return ShortLinkNorifier();
});
