import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color primaryColor;
  final Color scaffoldBackgroundColor;
  final Color bottomNavigationBarColor;
  final Color bottomNavigationBarSelectedItemColor;
  final Color bottomNavigationBarUnselectedItemColor;
  final Color appBarColor;
  final Color surfaceContainerColor;
  final Color iconColor;
  final Color containerShadowColor;
  final Color markedAsFavoriteColor;
  final Color markedAsSavedColor;
  final List<Color> trendingGradientColors;
  final List<Color> popularGradientColors;
  final List<Color> storiesGradientColors;

  const AppColors({
    required this.primaryColor,
    required this.scaffoldBackgroundColor,
    required this.bottomNavigationBarColor,
    required this.bottomNavigationBarSelectedItemColor,
    required this.bottomNavigationBarUnselectedItemColor,
    required this.appBarColor,
    required this.surfaceContainerColor,
    required this.trendingGradientColors,
    required this.popularGradientColors,
    required this.iconColor,
    required this.containerShadowColor,
    required this.storiesGradientColors,
    required this.markedAsFavoriteColor,
    required this.markedAsSavedColor,
  });

  @override
  ThemeExtension<AppColors> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    } else {
      return AppColors(
        primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
        scaffoldBackgroundColor: Color.lerp(
            scaffoldBackgroundColor, other.scaffoldBackgroundColor, t)!,
        bottomNavigationBarColor: Color.lerp(
            bottomNavigationBarColor, other.bottomNavigationBarColor, t)!,
        bottomNavigationBarSelectedItemColor: Color.lerp(
            bottomNavigationBarSelectedItemColor,
            other.bottomNavigationBarSelectedItemColor,
            t)!,
        bottomNavigationBarUnselectedItemColor: Color.lerp(
            bottomNavigationBarUnselectedItemColor,
            other.bottomNavigationBarUnselectedItemColor,
            t)!,
        appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
        surfaceContainerColor:
            Color.lerp(surfaceContainerColor, other.surfaceContainerColor, t)!,
        trendingGradientColors: trendingGradientColors
            .map((color) {
              return Color.lerp(
                  color,
                  other.trendingGradientColors[
                      trendingGradientColors.indexOf(color)],
                  t)!;
            })
            .toList(growable: false)
            .cast<Color>(),
        popularGradientColors: popularGradientColors
            .map((color) {
              return Color.lerp(
                  color,
                  other.popularGradientColors[
                      popularGradientColors.indexOf(color)],
                  t)!;
            })
            .toList(growable: false)
            .cast<Color>(),
        iconColor: Color.lerp(iconColor, other.iconColor, t)!,
        storiesGradientColors: storiesGradientColors
            .map((color) {
              return Color.lerp(
                  color,
                  other.storiesGradientColors[
                      storiesGradientColors.indexOf(color)],
                  t)!;
            })
            .toList(growable: false)
            .cast<Color>(),
        containerShadowColor:
            Color.lerp(containerShadowColor, other.containerShadowColor, t)!,
        markedAsFavoriteColor:
            Color.lerp(markedAsFavoriteColor, other.markedAsFavoriteColor, t)!,
        markedAsSavedColor:
            Color.lerp(markedAsSavedColor, other.markedAsSavedColor, t)!,
      );
    }
  }
}
