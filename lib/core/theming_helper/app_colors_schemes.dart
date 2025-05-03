import 'dart:ui';
import 'package:theming_example/core/theming_helper/app_colors.dart';

abstract class AppColorsSchemes {
  static const Color _primaryDarkColor = Color(0xFF8B5CF6);
  static const Color _scaffoldDarkColor = Color(0xFF111827);
  static const Color _iconDarkColor = Color(0xFF6B7280);
  static const AppColors dark = AppColors(
    primaryColor: _primaryDarkColor,
    scaffoldBackgroundColor: _scaffoldDarkColor,
    bottomNavigationBarColor: Color(0xFF0A091E),
    bottomNavigationBarSelectedItemColor: _primaryDarkColor,
    bottomNavigationBarUnselectedItemColor: _iconDarkColor,
    appBarColor: _scaffoldDarkColor,
    surfaceContainerColor: Color(0xFF202937),
    iconColor: _iconDarkColor,
    containerShadowColor: Color(0xFF242933),
    trendingGradientColors: [
      Color(0xFF7C3AED),
      Color(0xFF3B82F6),
    ],
    popularGradientColors: [
      Color(0xFFDB2777),
      Color(0xFFEF4444),
    ],
    storiesGradientColors: [
      Color(0xFF3B82F6),
      Color(0xFF9333EA),
    ],
    markedAsFavoriteColor: Color(0xFFEF4444),
    markedAsSavedColor: Color(0xFFDAB02A),
  );

  static const Color _primaryLightColor = Color(0xFF3B82F6);
  static const Color _scaffoldLightColor = Color(0xFFF9FAFB);
  static const Color _iconLightColor = Color(0xFF374151);
  static const AppColors light = AppColors(
    primaryColor: _primaryLightColor,
    scaffoldBackgroundColor: _scaffoldLightColor,
    bottomNavigationBarColor: Color(0xFFF3F4F6),
    bottomNavigationBarSelectedItemColor: _primaryLightColor,
    bottomNavigationBarUnselectedItemColor: _iconLightColor,
    appBarColor: _scaffoldLightColor,
    containerShadowColor: Color(0xFFE5E7EB),
    surfaceContainerColor: Color(0xFFffffff),
    iconColor: Color(0xff374151),
    trendingGradientColors: [
      Color(0xFF3B82F6),
      Color(0xFF9333EA),
    ],
    popularGradientColors: [
      Color(0xFFDC2626),
      Color(0xFFC37171),
    ],
    storiesGradientColors: [
      Color(0xFFFBBF24),
      Color(0xFFEF4444),
    ],
    markedAsFavoriteColor: Color(0xFFEF4444),
    markedAsSavedColor: Color(0xFFDAB02A),
  );
}
