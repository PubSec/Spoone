import 'package:flutter/material.dart';

Future<void> resultWidget(BuildContext context, Future data) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              Center(child: Text('Error: ${snapshot.error}'));
              Future.delayed(Duration(seconds: 20));
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              debugPrint(snapshot.data);
              // int idx = snapshot.data.toString().lastIndexOf("/");
              // String alias = snapshot.data.toString().substring(idx + 1);
              return Column(
                children: [
                  Center(
                    child: Text(
                      'URL: ${snapshot.data}',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              );
            }
          }
          return Center(child: Text('No data available'));
        },
      );
    },
  );
}
