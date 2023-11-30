import 'package:flutter/material.dart';
import 'userinfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.tabs});

  final List<Map> tabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 280,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                    child: const ProfileBar(image: 'assets/images/avatar.png', name: 'Екатерина')
                  ),
                ),
                bottom: TabBar(
                  labelStyle: const TextStyle(fontSize: 16, letterSpacing: -0.40),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [for (var item in tabs) Tab(text: item['text'])]
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
