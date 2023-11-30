import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';

class SberList extends StatelessWidget {
  const SberList({super.key, required this.items});

  final List<Map> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: "Тарифы и лимиты", 
          subtitle: "Для операций в Сбербанк Онлайн"
        ),
        Column(
          children: <Widget>[
            for (Map item in items) SberListItem(icon: item['icon'], title: item['title'], subtitle: item['subtitle'])
          ],
        ),
      ]
    );
  }
}

class SberListItem extends StatelessWidget {
  const SberListItem({super.key,
    required this.icon,
    required this.title,
    required this.subtitle
  });

  final String icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              Container(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: -0.40,
                    ),
                  ),
                  if (subtitle.isNotEmpty) Text(subtitle, 
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: -0.40
                    ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset('assets/images/ic_24_chevron_right.svg'),
        ],
      ),
    );
  }
}
