import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key, required this.items});

  final List<Map> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: "У вас подключено", 
          subtitle: "Подписки, автоплатежи и сервисы на которые вы подписались"
        ),
        Container(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              for (final (index, item) in items.indexed) ...{
                CarouselItem(icon: item['icon'], name: item['name'], title: item['title'], subtitle: item['subtitle']),
                if (index != items.length - 1) Container(width: 8)
              }
            ]
          ),
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, 
    required this.icon, 
    required this.name, 
    required this.title, 
    required this.subtitle
  });

  final String icon;
  final String name;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
        )
      ),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.transparent,
        child: InkWell(
          hoverColor: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$name: $title, $subtitle'))
            );
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  SvgPicture.asset(icon),
                  Container(width: 12),
                  Text(name, 
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4
                    )
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: const TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.4
                      ),
                      maxLines: 1,
                      softWrap: false,
                    ),
                    Text(subtitle,
                      style: const TextStyle(
                        color: Colors.black54, 
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.4
                      ),
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ],
                )
              ],
            )
          )
        )
      )
    );
  }
}
