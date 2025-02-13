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
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              // Assuming the data is a widget or can be converted to a widget
              return Center(child: Text('Data: ${snapshot.data}'));
            }
          }
          return Center(child: Text('No data available'));
        },
      );
    },
  );
}
