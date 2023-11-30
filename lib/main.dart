import 'package:flutter/material.dart';
import 'widgets/home.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';
import 'themes/themes.dart';
import 'themes/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final List<Map> _tabs = [
    {'text': getString['tab1'], 'view': const ProfilePage()},
    {'text': getString['tab2'], 'view': const SettingsPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sber App',
      theme: sberTheme(),
      home: HomePage(tabs: _tabs)
    );
  }
}
