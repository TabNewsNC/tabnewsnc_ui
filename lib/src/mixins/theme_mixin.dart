import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_colors_ext.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_metrics_ext.dart';

mixin ThemeMixin {
  ThemeData getThemeData(BuildContext context) {
    final theme = Theme.of(context);
    return theme;
  }

  ThemeColors getThemeColors(BuildContext context) {
    final colors = Theme.of(context).extension<ThemeColors>()!;
    return colors;
  }

  ThemeMetrics getThemeMetrics(BuildContext context) {
    final metrics = Theme.of(context).extension<ThemeMetrics>()!;
    return metrics;
  }

  (ThemeColors colors, ThemeMetrics metrics) getTheme(BuildContext context) {
    final colors = getThemeColors(context);
    final metrics = getThemeMetrics(context);
    return (colors, metrics);
  }
}
