import 'package:flutter/material.dart';

Future<Widget> resultWidget(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (context) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Text('sda'));
    },
  ).then((value) => value ?? Text('ds'));
}
