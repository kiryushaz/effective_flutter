import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';

class SberList extends StatelessWidget {
  const SberList({super.key, required this.items});

  final List<Map> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(
          title: "Тарифы и лимиты",
          subtitle: "Для операций в Сбербанк Онлайн"
        ),
        Column(
          children: <Widget>[
            for (final (index, item) in items.indexed) ...{
              ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(item['title']))
                  );
                },
                contentPadding: const EdgeInsets.all(0),
                leading: SvgPicture.asset(item['icon']),
                title: Text(item['title']),
                titleTextStyle: const TextStyle(
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: -0.40,
                ),
                subtitle: item['subtitle'].isNotEmpty ? Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(item['subtitle']),
                ) : null,
                subtitleTextStyle: const TextStyle(
                  color: Colors.black54,
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: -0.40
                ),
                trailing: SvgPicture.asset('assets/images/ic_24_chevron_right.svg'),
              ),
              if (index != items.length - 1) const Divider(height: 4, indent: 48)
            }
          ],
        ),
      ]
    );
  }
}
