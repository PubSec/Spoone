import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:spoone/core/data.dart';
import 'package:spoone/model/short_link_model.dart';
import 'package:spoone/widgets/help_widget.dart';

final GlobalKey _qrKey = GlobalKey();

Future<void> resultWidget(
    BuildContext context, Future<ShortLinkModel> sentRequest) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    showDragHandle: true,
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder(
        future: sentRequest,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("An error occured. Try again."),
                  action: SnackBarAction(
                    label: "Help",
                    onPressed: () => helpWigdet(context),
                  ),
                ),
              );
              return Text("");
            } else if (snapshot.hasData) {
              if (snapshot.data!.AliasError != null) {
                Future.delayed(Duration(milliseconds: 400));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Alias already taken try again")));
                return Text('');
              } else if (snapshot.data!.MaxClicksError != null) {
                Future.delayed(Duration(milliseconds: 400));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Max Clicks can't be negative")));
                return Text('');
              } else if (snapshot.data!.PasswordError != null) {
                Future.delayed(Duration(milliseconds: 400));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Password must be atleast 8 characters long, must contain atleast a letter and a number and a special character either '@' or '.' and cannot be consecutive.")));
                return Text('');
              } else if (snapshot.data!.UrlError != null) {
                Future.delayed(Duration(milliseconds: 400));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "The url must contain a valid protocol like https, http and must follow rfc-1034 & rfc-2727")));
                return Text('');
              } else {
                String? url = snapshot.data!.short_url;
                int indx = url!.lastIndexOf('/');
                String alias = url.substring(indx + 1);

                return Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RepaintBoundary(
                        key: _qrKey,
                        child: QrImageView(
                          backgroundColor: Colors.white,
                          data: url,
                          version: QrVersions.auto,
                          size: 250.0,
                          gapless: true,
                          errorStateBuilder: (ctx, err) {
                            return const Center(
                              child: Text(
                                'Something went wrong!!!',
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _downloadQRCode(alias, context);
                            },
                            icon: Icon(Icons.download),
                          ),
                          IconButton(
                            onPressed: () async {
                              await Share.share(url);
                            },
                            icon: Icon(Icons.share),
                          )
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: url),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          }
          return Center(child: Text('No data available'));
        },
      );
    },
  );
}

Future _downloadQRCode(String fileName, BuildContext context) async {
  try {
    RenderRepaintBoundary boundary =
        _qrKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    var image = await boundary.toImage(pixelRatio: 3.0);

    final whitePaint = Paint()..color = Colors.white;
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()));
    canvas.drawRect(
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
        whitePaint);
    canvas.drawImage(image, Offset.zero, Paint());
    final picture = recorder.endRecording();
    final img = await picture.toImage(image.width, image.height);
    ByteData? bytedata = await img.toByteData(format: ImageByteFormat.png);
    Uint8List pngBytes = bytedata!.buffer.asUint8List();

    final file = await File("$externalDir/$fileName.png").create();
    await file.writeAsBytes(pngBytes);

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Qr code saved")));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Failed to save qr code")));
  }
}
