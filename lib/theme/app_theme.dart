import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0B0D12);
  static const surface = Color(0xFF161A22);
  static const surfaceAlt = Color(0xFF1C212C);
  static const chip = Color(0xFF1A1F28);
  static const chipSelected = Color(0xFF142033);
  static const border = Color(0xFF2A3344);
  static const accent = Color(0xFF3B82F6);
  static const accentSoft = Color(0xFF2563EB);
  static const textPrimary = Color(0xFFF3F5F8);
  static const textSecondary = Color(0xFF9AA3B2);
  static const textMuted = Color(0xFF6B7380);
  static const bubble = Color(0xCC1E2430);
  static const navBar = Color(0xF20C1018);
}

class AppTheme {
  static ThemeData dark() {
    const scheme = ColorScheme.dark(
      primary: AppColors.accent,
      onPrimary: Colors.white,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      secondary: AppColors.accentSoft,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.textPrimary,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColors.surfaceAlt,
        contentTextStyle: TextStyle(color: AppColors.textPrimary),
      ),
    );
  }
}
