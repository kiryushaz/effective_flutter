import 'package:flutter/material.dart';
import 'pages/home.dart';
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
      title: getString['maintitle'] ?? '',
      theme: sberTheme(),
      home: Container(
        color: Theme.of(context).colorScheme.surface,
        child: SafeArea(
          child: HomePage(tabs: _tabs)
        )
      )
    );
  }
}
