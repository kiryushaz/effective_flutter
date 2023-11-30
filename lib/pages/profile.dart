import 'package:flutter/material.dart';
import '../widgets/carousel.dart';
import '../widgets/chip.dart';
import '../widgets/list.dart';
import '../themes/strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static final List<Map> _carousel = [
    {'icon': 'assets/images/mc_36_sberprime.svg', 'name': getString['carouselname1'], 'title': getString['carouseltitle1'], 'subtitle': getString['carouselsubtitle']},
    {'icon': 'assets/images/ic_36_percent_fill.svg', 'name': getString['carouselname2'], 'title': getString['carouseltitle2'], 'subtitle': getString['carouselsubtitle']}
  ];

  static final List<Map> _list = [
    {'icon': 'assets/images/ic_36_speedometer.svg', 'title': getString['listtitle1'], 'subtitle': getString['listsubtitle1']},
    {'icon': 'assets/images/ic_36_percent.svg', 'title': getString['listtitle2'], 'subtitle': getString['listsubtitle2']},
    {'icon': 'assets/images/ic_36_arrows_forward_back.svg', 'title': getString['listtitle3'], 'subtitle': getString['listsubtitle3']}
  ];

  static final List<String> _chip = ['Еда', 'Саморазвитие', 'Технологии', 'Дом', 'Досуг', 'Забота о себе', 'Наука'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Carousel(items: _carousel),
            Container(height: 32),
            SberList(items: _list),
            Container(height: 32),
            SberCards(items: _chip)
          ],
        ),
      )
    );
  }
}
