import 'package:flutter/material.dart';
import 'userinfo.dart';
import '../themes/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.tabs});

  final List<Map> tabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                expandedHeight: 280,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                    child: ProfileBar(image: 'assets/images/avatar.png', name: getString['profilename'] ?? '')
                  ),
                ),
                bottom: TabBar(tabs: [for (var item in tabs) Tab(text: item['text'])]
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [for (var item in tabs) item['view']]
          ),
        )
      ),
    );
  }
}
