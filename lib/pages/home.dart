import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/userinfo.dart';
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
                surfaceTintColor: Theme.of(context).colorScheme.surface,
                expandedHeight: 250,
                leading: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(getString['snackbarclose'] ?? ''))
                    );
                  },
                  icon: SvgPicture.asset('assets/images/ic_24_cross.svg'),
                ),
                actions: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(getString['snackbarlogout'] ?? ''))
                        );
                      },
                      icon: SvgPicture.asset('assets/images/ic_24_arrow_right_square.svg'),
                    )
                  ),
                ],
                floating: false,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(getString['profilename'] ?? '', style: Theme.of(context).textTheme.titleLarge),
                  titlePadding: const EdgeInsets.only(bottom: 62),
                  expandedTitleScale: 1,
                  centerTitle: true,
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
