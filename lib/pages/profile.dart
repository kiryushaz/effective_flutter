import 'package:flutter/material.dart';
import '../widgets/carousel.dart';
import '../widgets/chip.dart';
import '../widgets/list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<Map> _carousel = [
    {'icon': 'assets/images/mc_36_sberprime.svg', 'name': 'СберПрайм', 'title': 'Платёж 9 июля', 'subtitle': '199 ₽ в месяц'},
    {'icon': 'assets/images/ic_36_percent_fill.svg', 'name': 'Переводы', 'title': 'Автопродление 21 августа', 'subtitle': '199 ₽ в месяц'}
  ];

  static const List<Map> _list = [
    {'icon': 'assets/images/ic_36_speedometer.svg', 'title': 'Изменить суточный лимит', 'subtitle': 'На платежи и переводы'},
    {'icon': 'assets/images/ic_36_percent.svg', 'title': 'Переводы без комиссии', 'subtitle': 'Показать остаток в этом месяце'},
    {'icon': 'assets/images/ic_36_arrows_forward_back.svg', 'title': 'Информация о тарифах и лимитах', 'subtitle': ''}
  ];

  static const List<String> _chip = ['Еда', 'Саморазвитие', 'Технологии', 'Дом', 'Досуг', 'Забота о себе', 'Наука'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Carousel(items: _carousel),
            Container(height: 32),
            const SberList(items: _list),
            Container(height: 32),
            const SberCards(items: _chip)
          ],
        ),
      )
    );
  }
}
