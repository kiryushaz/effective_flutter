import 'package:flutter/material.dart';
import 'header.dart';

class SberCards extends StatelessWidget {
  const SberCards({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: "Интересы", 
          subtitle: "Мы подбираем истории и предложения по темам, которые вам нравятся"
        ),
        Container(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (String item in items) 
              Chip(label: Text(item, style: const TextStyle(
                fontWeight: FontWeight.w500, 
                fontSize: 14, 
                letterSpacing: -0.40
              )))
          ],
        )
      ],
    );
  }
}
