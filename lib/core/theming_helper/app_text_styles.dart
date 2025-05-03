import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle font20SemiBold;

  AppTextStyles({
    required this.font20SemiBold,
  });

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? font20SemiBold,
  }) {
    return AppTextStyles(
      font20SemiBold: font20SemiBold ?? this.font20SemiBold,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
      covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    } else {
      return AppTextStyles(
        font20SemiBold:
            TextStyle.lerp(font20SemiBold, other.font20SemiBold, t)!,
      );
    }
  }
}
