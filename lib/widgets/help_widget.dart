import 'package:flutter/material.dart';

Future<dynamic> helpWigdet(BuildContext context) {
  return showAdaptiveDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          margin: EdgeInsets.all(20),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text('How to'),
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                        child: LinearProgressIndicator(
                      value: 20,
                    )),
                    TextSpan(
                        text:
                            "Proper URL is required. URL must include a protocol(http or https).\n",
                        spellOut: true),
                    WidgetSpan(
                        child: LinearProgressIndicator(
                      value: 20,
                    )),
                    TextSpan(
                        text:
                            "Alias can be anything, if not set a random alias will be provided.\n"),
                    WidgetSpan(
                        child: LinearProgressIndicator(
                      value: 20,
                    )),
                    TextSpan(
                        text:
                            "If password is set make sure it contains at least 8 characters, a number, and a symbol.\n"),
                    WidgetSpan(
                        child: LinearProgressIndicator(
                      value: 20,
                    )),
                    TextSpan(text: "Max clicks can't be negative."),
                    WidgetSpan(
                        child: LinearProgressIndicator(
                      value: 20,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
