import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spoone/core/data.dart';
import 'package:spoone/widgets/results_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

Future<http.Response> sendData(String url, String alias, String password,
    dynamic maxClicks, bool blockBots) {
  if (blockBots) {
    return http.post(
      Uri.parse(baseUrl),
      body: {
        "url": url,
        "alias": alias,
        "password": password,
        "max-clicks": maxClicks,
        "block-bots": "True",
      },
      headers: headers,
    );
  } else {
    return http.post(
      Uri.parse(baseUrl),
      body: {
        "url": url,
        "alias": alias,
        "password": password,
        "max-clicks": maxClicks,
        // "block-bots": blockBots,
      },
      headers: headers,
    );
  }
}

class _HomeViewState extends State<HomeView> {
  String placeHolder = '';
  bool value = false;
  final TextEditingController _urlTextEditingController =
      TextEditingController(text: 'https://');
  final TextEditingController _aliasTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _clicksTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Spoone'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
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
            spacing: 18,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                maxLines: 1,
                controller: _urlTextEditingController,
                decoration: InputDecoration(
                  label: Text('URL'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                maxLines: 1,
                controller: _aliasTextEditingController,
                decoration: InputDecoration(
                  label: Text('Alias (Optional)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                maxLines: 1,
                controller: _passwordTextEditingController,
                decoration: InputDecoration(
                  label: Text('Password (Optional)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLines: 1,
                controller: _clicksTextEditingController,
                decoration: InputDecoration(
                  label: Text('Max Clicks (Optional)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                  setState(
                    () {
                      value = newValue!;
                    },
                  );
                },
              ),
              FilledButton(
                onPressed: () async {
                  resultWidget(context);
                  try {
                    final data = await sendData(
                      _urlTextEditingController.text,
                      _aliasTextEditingController.text,
                      _passwordTextEditingController.text,
                      _clicksTextEditingController.text,
                      value,
                    );
                    setState(() {
                      placeHolder = data.body;
                    });
                  } catch (e) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("$e")));
                  }
                },
                child: Text('Shorten'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
