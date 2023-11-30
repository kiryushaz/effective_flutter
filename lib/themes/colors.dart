import 'package:flutter/material.dart';

abstract class AppColors {
  static const primaryTextColor = Colors.black;
  static final secondaryTextColor = Colors.black.withOpacity(0.55);

  static const iconBrandColor = Color(0xFF08A652);
  static const tabsBrandColor = Color(0xFF068441);

  static const surfaceColor = Colors.white;
  static final backgroundColor = Colors.grey.shade100;

  static final chipColor = Colors.black.withOpacity(0.08);
  static final selectedChipColor = tabsBrandColor.withOpacity(0.55);
}
