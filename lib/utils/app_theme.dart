import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_style.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    // GENERAL
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.background,
    fontFamily: 'Roboto',

    // COLOR SCHEME
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.orange,
      surface: AppColors.card,
    ),

    // APP BAR
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
    ),

    // TEXT THEME
    textTheme: const TextTheme(
      headlineLarge: AppTextStyle.heading1,
      headlineMedium: AppTextStyle.heading2,
      headlineSmall: AppTextStyle.heading3,
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
    ),

    // BOTTOM NAVIGATION BAR
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.card,

      selectedItemColor: AppColors.primary,

      unselectedItemColor: AppColors.lightGrey,

      type: BottomNavigationBarType.fixed,
    ),
  );
}
