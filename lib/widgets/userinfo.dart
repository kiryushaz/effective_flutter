import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key,
    required this.image,
    required this.name
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Column(
          children: [
            Image.asset(image,
              width: 110,
              height: 110,
            ),
          ],
        ),
    );
  }
}
