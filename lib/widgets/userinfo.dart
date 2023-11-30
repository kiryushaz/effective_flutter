import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../themes/strings.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key,
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
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(getString['snackbarclose'] ?? ''))
            );
          },
          icon: SvgPicture.asset('assets/images/ic_24_cross.svg'),
          padding: const EdgeInsets.all(0),
        ),
        Column(
          children: [
            Image.asset(image,
              width: 110,
              height: 110,
            ),
            const SizedBox(height: 36),
            Text(name, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(getString['snackbarlogout'] ?? ''))
            );
          },
          icon: SvgPicture.asset('assets/images/ic_24_arrow_right_square.svg'),
          padding: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
