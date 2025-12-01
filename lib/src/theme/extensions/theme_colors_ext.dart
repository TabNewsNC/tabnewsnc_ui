import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.onSurface,
    required this.onSurfaceAlt,
    required this.border,
    required this.background,
    required this.onBackground,
    required this.onBackgroundAlt,
  });

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color surface;
  final Color onSurface;
  final Color onSurfaceAlt;
  final Color border;
  final Color background;
  final Color onBackground;
  final Color onBackgroundAlt;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? onSurface,
    Color? onSurfaceAlt,
    Color? border,
    Color? background,
    Color? onBackground,
    Color? onBackgroundAlt,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceAlt: onSurfaceAlt ?? this.onSurfaceAlt,
      border: border ?? this.border,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      onBackgroundAlt: onBackgroundAlt ?? this.onBackgroundAlt,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) return this;

    return ThemeColors(
      primary: .lerp(primary, other.primary, t)!,
      onPrimary: .lerp(onPrimary, other.onPrimary, t)!,
      secondary: .lerp(secondary, other.secondary, t)!,
      onSecondary: .lerp(onSecondary, other.onSecondary, t)!,
      surface: .lerp(surface, other.surface, t)!,
      onSurface: .lerp(onSurface, other.onSurface, t)!,
      onSurfaceAlt: .lerp(onSurfaceAlt, other.onSurfaceAlt, t)!,
      border: .lerp(border, other.border, t)!,
      background: .lerp(background, other.background, t)!,
      onBackground: .lerp(onBackground, other.onBackground, t)!,
      onBackgroundAlt: .lerp(onBackgroundAlt, other.onBackgroundAlt, t)!,
    );
  }
}
