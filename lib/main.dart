import 'package:flutter/material.dart';
import 'package:spoone/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: null,
        package: 'android',
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
