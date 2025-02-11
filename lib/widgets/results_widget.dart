import 'package:flutter/material.dart';
import 'package:spoone/model/short_link_model.dart';

Future<Widget> resultWidget(BuildContext context, ShortLinkModel shortLink) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (context) {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Text(
              shortLink.getAlias(),
            ),
          ),
          shortLink.getQRCode()
        ],
      );
    },
  ).then((value) => value ?? Text('ds'));
}
