import 'package:flutter/material.dart';
import '../widgets/carousel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<Map> _carousel = [
    {'icon': 'assets/images/mc_36_sberprime.svg', 'name': 'СберПрайм', 'title': 'Платёж 9 июля', 'subtitle': '199 ₽ в месяц'},
    {'icon': 'assets/images/ic_36_percent_fill.svg', 'name': 'Переводы', 'title': 'Автопродление 21 августа', 'subtitle': '199 ₽ в месяц'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        child: const Column(
          children: [
            Carousel(items: _carousel)
          ],
        ),
    );
  }
}
