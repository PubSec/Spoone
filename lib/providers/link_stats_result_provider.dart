import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spoone/core/data.dart';
import 'package:spoone/model/link_stats/link_stats_model.dart';
import 'package:http/http.dart' as http;

@riverpod
class LinkStatsResultNotifier extends Notifier<Future<LinkStatsModel>> {
  @override
  Future<LinkStatsModel> build() {
    return Future.value(LinkStatsModel.fromJson({}));
  }

  Future<LinkStatsModel> getLinkStats(String alias, String? password) async {
    http.Response response =
        await http.post(Uri.parse("$statsBaseUrl/$alias"), headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    }, body: {
      "password": password,
    });
    return LinkStatsModel.fromJson(jsonDecode(response.body));
  }
}

final linkStatsResultNotifierProvider =
    NotifierProvider<LinkStatsResultNotifier, Future<LinkStatsModel>>(() {
  return LinkStatsResultNotifier();
});
