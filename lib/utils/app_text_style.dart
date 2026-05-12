import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  // DISPLAY
  static const display = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  // HEADINGS
  static const heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const heading2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static const heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const heading4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // BODY
  static const bodyLarge = TextStyle(fontSize: 16, color: AppColors.white);
  static const bodyMedium = TextStyle(fontSize: 14, color: AppColors.white);
  static const bodySmall = TextStyle(fontSize: 12, color: AppColors.lightGrey);

  // LABELS
  static const labe = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGrey,
  );
}
