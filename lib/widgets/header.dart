import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key,
    required this.title,
    required this.subtitle
  });

  final String title;
  final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
              letterSpacing: -0.70,
            )
          ),
          Container(height: 8),
          Text(subtitle, style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              letterSpacing: -0.42
            )
          ),
        ],
      ),
    );
  }
}
