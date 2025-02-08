import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spoone/core/data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

Future<http.Response> sendData() {
  return http.post(
    Uri.parse(baseUrl),
    body: {"url": "https://youtube.com"},
    headers: {"Accept": "application/json"},
  );
}

class _HomeViewState extends State<HomeView> {
  String placeHolder = '';
  bool value = false;
  final TextEditingController _urlTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Spoone'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(240, 9, 12, 61),
              Color.fromARGB(151, 138, 145, 236),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              maxLines: 1,
              controller: _urlTextEditingController,
              decoration: InputDecoration(
                label: Text('URL'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            Center(
              child: Text(placeHolder),
            ),
            CheckboxListTile(
              title: Text('Block bots'),
              controlAffinity: ListTileControlAffinity.leading,
              value: value,
              onChanged: (newValue) {
                debugPrint("$newValue");
                setState(
                  () {
                    value = newValue!;
                  },
                );
              },
            ),
            FilledButton.tonal(
              onPressed: () async {
                final data = await sendData();
                setState(() {
                  placeHolder = data.body;
                });
              },
              child: Text('Shorten'),
            ),
          ],
        ),
      ),
    );
  }
}
