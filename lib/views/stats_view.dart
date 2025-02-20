// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spoone/model/link_stats/link_stats_model.dart';
import 'package:spoone/providers/link_stats_result_provider.dart';

class StatsView extends ConsumerStatefulWidget {
  const StatsView({super.key});

  @override
  StatsViewState createState() => StatsViewState();
}

class StatsViewState extends ConsumerState<StatsView> {
  final TextEditingController _aliasTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  Future<LinkStatsModel>? _resultDataFuture;

  @override
  void dispose() {
    _aliasTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
              TextField(
                controller: _aliasTextEditingController,
                decoration: InputDecoration(
                  labelText: 'Alias',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordTextEditingController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  if (_aliasTextEditingController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Alias cannot be empty")));
                  } else {
                    setState(() {
                      _resultDataFuture = ref
                          .read(linkStatsResultNotifierProvider.notifier)
                          .getLinkStats(
                            _aliasTextEditingController.text.toString(),
                            _passwordTextEditingController.text,
                          );
                    });
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(
                height: 30,
              ),
              if (_resultDataFuture != null) // Check if future is set
                FutureBuilder<LinkStatsModel>(
                  future: _resultDataFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text(
                          'An error occured. Check your internet connection or try again later.');
                    } else if (snapshot.hasData) {
                      if (snapshot.data!.UrlError != null) {
                        return Text("Url doesn't exist.");
                      } else if (snapshot.data!.PasswordError != null) {
                        return Text("Password is not correct");
                      } else {
                        String? url = snapshot.data!.url;
                        String? password = snapshot.data!.password;
                        bool? expired = snapshot.data!.expired;
                        double? average_daily_clicks =
                            snapshot.data!.average_daily_clicks;
                        double? average_weekly_clicks =
                            snapshot.data!.average_weekly_clicks;
                        double? average_monthly_clicks =
                            snapshot.data!.average_monthly_clicks;
                        dynamic bots = snapshot.data!.bots?.entries;
                        dynamic unique_counter = snapshot.data!.unique_counter;
                        dynamic unique_os_name = snapshot.data!.unique_os_name;
                        dynamic unique_country = snapshot.data!.unique_country;
                        dynamic unique_browser = snapshot.data!.unique_browser;
                        return Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple.shade50)),
                          child: Column(
                            children: [
                              SelectableText.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: "URL: "),
                                    TextSpan(
                                      text: "$url\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Password: "),
                                    TextSpan(
                                      text: "$password\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Expired: "),
                                    TextSpan(
                                      text: "$expired\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Bots: "),
                                    TextSpan(
                                      text: "$bots\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Average Daily Clicks: "),
                                    TextSpan(
                                      text: "$average_daily_clicks\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Average Weekly Clicks: "),
                                    TextSpan(
                                      text: "$average_weekly_clicks\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Average Monthly Clicks: "),
                                    TextSpan(
                                      text: "$average_monthly_clicks\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Day Click: "),
                                    TextSpan(
                                      text: "$unique_counter\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Unique Country: "),
                                    TextSpan(
                                      text: "$unique_country\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Unique OS Name: "),
                                    TextSpan(
                                      text: "$unique_os_name\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "Unique Browser: "),
                                    TextSpan(
                                      text: "$unique_browser\n",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }
                    } else {
                      return Text('No data found');
                    }
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
