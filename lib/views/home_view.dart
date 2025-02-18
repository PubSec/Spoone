import 'package:flutter/material.dart';
import 'package:spoone/views/create_url_view.dart';
import 'package:spoone/views/stats_view.dart';
import 'package:spoone/widgets/help_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                helpWigdet(context);
              },
              icon: Icon(Icons.info),
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.generating_tokens),
            ),
            Tab(
              icon: Icon(Icons.stacked_bar_chart),
            )
          ]),
          title: Text("Spoone"),
          centerTitle: true,
        ),
        body: TabBarView(children: [CreateUrlView(), StatsView()]),
      ),
    );
  }
}
