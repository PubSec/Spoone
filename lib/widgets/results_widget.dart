import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:spoone/model/short_link_model.dart';
import 'package:spoone/widgets/help_widget.dart';

Future<void> resultWidget(
    BuildContext context, Future<ShortLinkModel> sentRequest) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)), // Rounded top corners
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
              String url = snapshot.data!.short_url;
              int idx = url.lastIndexOf("/");
              String alias = url.substring(idx);
              return Container(
                padding: EdgeInsets.all(20),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrettyQrView.data(
                      data: snapshot.data!.short_url,
                      decoration: const PrettyQrDecoration(
                        shape: PrettyQrRoundedSymbol(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        background: Colors.white,
                        image: PrettyQrDecorationImage(
                          image: AssetImage('asset/images/ic_launcher.png'),
                        ),
                      ),
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
          return Center(child: Text('No data available'));
        },
      );
    },
  );
}
