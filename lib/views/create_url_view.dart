import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spoone/providers/short_link_result_provider.dart';
import 'package:spoone/widgets/help_widget.dart';
import 'package:spoone/widgets/results_widget.dart';

class CreateUrlView extends ConsumerStatefulWidget {
  const CreateUrlView({super.key});

  @override
  ConsumerState<CreateUrlView> createState() => _CreateUrlViewState();
}

class _CreateUrlViewState extends ConsumerState<CreateUrlView> {
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
  void dispose() {
    _urlTextEditingController.dispose();
    _aliasTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _clicksTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sendNotifier = ref.watch(shortLinkNorifierProvider.notifier).getLink;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                autofocus: false,
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
                obscureText: true,
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
              Text.rich(
                TextSpan(children: [
                  WidgetSpan(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text("Block Bots"),
                  )),
                  WidgetSpan(
                    child: Switch(
                      value: value,
                      onChanged: (newValue) {
                        setState(
                          () {
                            value = newValue;
                          },
                        );
                      },
                    ),
                  )
                ]),
              ),
              FilledButton(
                onPressed: () {
                  if (_urlTextEditingController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('URL can\'t be empty'),
                        action: SnackBarAction(
                            label: "Help",
                            onPressed: () => helpWigdet(context)),
                      ),
                    );
                  } else {
                    final data = sendNotifier(
                      url: _urlTextEditingController.text,
                      alias: _aliasTextEditingController.text,
                      password: _passwordTextEditingController.text,
                      maxClicks: _clicksTextEditingController.text,
                      blockBots: value,
                    );
                    resultWidget(context, data);
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
