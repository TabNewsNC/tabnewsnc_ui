import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_text_ext.dart';

class DefaultThemeText extends ThemeText {
  const DefaultThemeText({
    super.bodySmall = const ThemeTextStyle(
      size: 12,
      weight: FontWeight.w400,
    ),
    super.bodyMedium = const ThemeTextStyle(
      size: 14,
      weight: FontWeight.w400,
    ),
    super.bodyLarge = const ThemeTextStyle(
      size: 16,
      weight: FontWeight.w400,
    ),
    super.titleSmall = const ThemeTextStyle(
      size: 12,
      weight: FontWeight.w600,
    ),
    super.titleMedium = const ThemeTextStyle(
      size: 14,
      weight: FontWeight.w600,
    ),
    super.titleLarge = const ThemeTextStyle(
      size: 16,
      weight: FontWeight.w600,
    ),
    super.headlineSmall = const ThemeTextStyle(
      size: 16,
      weight: FontWeight.w700,
    ),
    super.headlineMedium = const ThemeTextStyle(
      size: 18,
      weight: FontWeight.w700,
    ),
    super.headlineLarge = const ThemeTextStyle(
      size: 24,
      weight: FontWeight.w700,
    ),
  });
}
