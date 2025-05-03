import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors_schemes.dart';
import 'package:theming_example/core/theming_helper/app_text_styles_schemes.dart';

class AppThemes {
  static final AppThemes _instance = AppThemes._internal();

  factory AppThemes() {
    return _instance;
  }

  AppThemes._internal();

  ThemeData get lightTheme {
    final appLightColors = AppColorsSchemes.light;
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: appLightColors.primaryColor,
        primary: appLightColors.primaryColor,
        brightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: appLightColors.iconColor,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appLightColors.appBarColor,
        foregroundColor: appLightColors.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appLightColors.bottomNavigationBarColor,
        selectedItemColor: appLightColors.bottomNavigationBarSelectedItemColor,
        unselectedItemColor:
            appLightColors.bottomNavigationBarUnselectedItemColor,
      ),
      scaffoldBackgroundColor: appLightColors.scaffoldBackgroundColor,
      extensions: <ThemeExtension<dynamic>>[
        appLightColors,
        AppTextStylesSchemes.light,
      ],
    );
  }

  ThemeData get darkTheme {
    final appDarkColors = AppColorsSchemes.dark;
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: appDarkColors.primaryColor,
        primary: appDarkColors.primaryColor,
        brightness: Brightness.dark,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      iconTheme: IconThemeData(
        color: appDarkColors.iconColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appDarkColors.appBarColor,
        foregroundColor: appDarkColors.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appDarkColors.bottomNavigationBarColor,
        selectedItemColor: appDarkColors.bottomNavigationBarSelectedItemColor,
        unselectedItemColor:
            appDarkColors.bottomNavigationBarUnselectedItemColor,
      ),
      scaffoldBackgroundColor: appDarkColors.scaffoldBackgroundColor,
      extensions: <ThemeExtension<dynamic>>[
        appDarkColors,
        AppTextStylesSchemes.dark,
      ],
    );
  }
}
