import 'package:flutter/material.dart';
import 'widgets/title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Map> _tabs = [
    {'text': 'Профиль', 'view': Center(child: Text("This is profile page"))},
    {'text': 'Настройки', 'view': Center(child: Text("This is settings page"))},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sber App',
      theme: ThemeData(
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, 
          background: Colors.grey.shade100,
          surface: Colors.white
        ),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const TitleBar(image: 'assets/images/avatar.png', name: 'Екатерина'),
            toolbarHeight: 250,
            bottom: TabBar(
              labelStyle: const TextStyle(fontSize: 16, letterSpacing: -0.40),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [for (var item in _tabs) Tab(text: item['text'])],
            ),
          ),
          body: TabBarView(
            children: <Widget>[for (var item in _tabs) item['view']],
          ),
        ),
      )
    );
  }
}
