import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabnewsnc_ui/src/theme/default_theme_colors.dart';
import 'package:tabnewsnc_ui/src/theme/default_theme_metrics.dart';
import 'package:tabnewsnc_ui/src/theme/default_theme_text.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_colors_ext.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_metrics_ext.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_text_ext.dart';

final class DefaultAppTheme {
  const DefaultAppTheme({
    this.text = const DefaultThemeText(),
    this.metrics = const DefaultThemeMetrics(),
    this.darkColors = const DefaultThemeDarkColors(),
    this.lightColors = const DefaultThemeLightColors(),
  });

  final ThemeText text;
  final ThemeMetrics metrics;
  final ThemeColors darkColors;
  final ThemeColors lightColors;

  ThemeData get dark => _genTheme(isDark: true);
  ThemeData get light => _genTheme(isDark: false);

  ThemeData _genTheme({required bool isDark}) {
    final ThemeData theme;
    final ThemeColors colors;
    final Brightness brightness;

    if (isDark) {
      colors = darkColors;
      brightness = Brightness.dark;
      theme = .dark(useMaterial3: true);
    } else {
      colors = lightColors;
      brightness = Brightness.light;
      theme = .light(useMaterial3: true);
    }

    return theme.copyWith(
      brightness: brightness,
      visualDensity: .compact,
      extensions: [colors, metrics],
      scaffoldBackgroundColor: colors.background,
      colorScheme: .fromSeed(
        brightness: brightness,
        seedColor: colors.primary,
      ),
      textTheme: GoogleFonts.interTextTheme(theme.textTheme).copyWith(
        bodySmall: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.bodySmall.size,
          fontWeight: text.bodySmall.weight,
        ),
        bodyMedium: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.bodyMedium.size,
          fontWeight: text.bodyMedium.weight,
        ),
        bodyLarge: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.bodyLarge.size,
          fontWeight: text.bodyLarge.weight,
        ),
        titleSmall: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.titleSmall.size,
          fontWeight: text.titleSmall.weight,
        ),
        titleMedium: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.titleMedium.size,
          fontWeight: text.titleMedium.weight,
        ),
        titleLarge: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.titleLarge.size,
          fontWeight: text.titleLarge.weight,
        ),
        headlineSmall: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.headlineSmall.size,
          fontWeight: text.headlineSmall.weight,
        ),
        headlineMedium: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.headlineMedium.size,
          fontWeight: text.headlineMedium.weight,
        ),
        headlineLarge: GoogleFonts.inter(
          color: colors.onBackground,
          fontSize: text.headlineLarge.size,
          fontWeight: text.headlineLarge.weight,
        ),
      ),
    );
  }
}
