import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_metrics_ext.dart';

class DefaultThemeMetrics extends ThemeMetrics {
  const DefaultThemeMetrics({
    super.xSmall = 4,
    super.small = 8,
    super.medium = 16,
    super.large = 24,
    super.xLarge = 32,
    super.icon = 21,
    super.blur = 24,
    super.radius = 16,
    super.border = 1,
    super.button = const Size(.infinity, 38),
    super.iconButton = Size.zero,
    super.curve = Curves.easeInOut,
    super.duration = const Duration(milliseconds: 200),
  });
}
