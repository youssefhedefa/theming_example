import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_text_styles.dart';

abstract class AppTextStylesSchemes {
  static AppTextStyles dark = AppTextStyles(
    font20SemiBold: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );

  static AppTextStyles light = AppTextStyles(
    font20SemiBold: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );
}
