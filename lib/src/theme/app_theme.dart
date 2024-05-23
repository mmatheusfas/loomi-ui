import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static final theme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,

    /// ElevatedButtonThemeData
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        backgroundColor: AppColors.yellow,
        minimumSize: const Size.fromHeight(56),
      ),
    ),

    /// OutlinedButtonThemeData
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        minimumSize: const Size.fromHeight(56),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      focusColor: AppColors.white,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(48),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(48),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(48),
      ),
    ),
  );
}
