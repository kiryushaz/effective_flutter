import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

ThemeData sberTheme() {
  return ThemeData(
    fontFamily: 'SFProText',
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.iconBrandColor, 
      background: AppColors.backgroundColor,
      surface: AppColors.surfaceColor
    ),
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.primaryTextColor,
      labelStyle: AppFonts.bodyLarge,
      unselectedLabelColor: AppColors.secondaryTextColor,
      unselectedLabelStyle: AppFonts.bodyMedium,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(width: 2, color: AppColors.tabsBrandColor)
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(color: AppColors.backgroundColor, fontSize: 16)
    ),
    useMaterial3: true,
  );
}
