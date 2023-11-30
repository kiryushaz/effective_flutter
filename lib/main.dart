import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/home.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Map> _tabs = [
    {'text': 'Профиль', 'view': ProfilePage()},
    {'text': 'Настройки', 'view': SettingsPage()},
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
      home: const HomePage(tabs: _tabs)
    );
  }
}
