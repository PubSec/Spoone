import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ShortLinkModel {
  Response url;

  ShortLinkModel({required this.url});

  String getAlias() {
    int idx = this.url.body.lastIndexOf('/');
    String alias = this.url.body.substring(idx);
    return alias;
  }

  Widget getQRCode() {
    dynamic result = PrettyQrView.data(data: this.url.body);
    return result;
  }
}
