import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key,
    required this.image,
    required this.name
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/ic_24_cross.svg'),
        Column(
          children: [
            Image.asset(image,
              width: 110,
              height: 110,
            ),
            const SizedBox(height: 36),
            Text(name,
              style: const TextStyle(
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                letterSpacing: -0.7
              ),
            ),
          ],
        ),
        SvgPicture.asset('assets/images/ic_24_arrow_right_square.svg'),
      ],
    );
  }
}
