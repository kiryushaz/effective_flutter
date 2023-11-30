import 'package:flutter/material.dart';
import 'colors.dart';

abstract class AppFonts {
  static const titleLarge = TextStyle(
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppColors.primaryTextColor);
  static const titleMedium = TextStyle(
      fontFamily: 'SFProText',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.primaryTextColor,
      letterSpacing: -0.7);
  static const titleSmall = TextStyle(
      fontFamily: 'SFProText',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.primaryTextColor,
      letterSpacing: -0.4);
  static const bodyLarge = TextStyle(
      fontFamily: 'SFProText',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.primaryTextColor,
      letterSpacing: -0.4);
  static final bodyMedium = TextStyle(
      fontFamily: 'SFProText',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.secondaryTextColor,
      letterSpacing: -0.4);
  static final bodySmall = TextStyle(
      fontFamily: 'SFProText',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.secondaryTextColor,
      letterSpacing: -0.4);
}
