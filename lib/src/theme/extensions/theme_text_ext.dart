import 'package:flutter/material.dart';

class ThemeText extends ThemeExtension<ThemeText> {
  const ThemeText({
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.titleSmall,
    required this.titleMedium,
    required this.titleLarge,
    required this.headlineSmall,
    required this.headlineMedium,
    required this.headlineLarge,
  });

  final ThemeTextStyle bodySmall;
  final ThemeTextStyle bodyMedium;
  final ThemeTextStyle bodyLarge;
  final ThemeTextStyle titleSmall;
  final ThemeTextStyle titleMedium;
  final ThemeTextStyle titleLarge;
  final ThemeTextStyle headlineSmall;
  final ThemeTextStyle headlineMedium;
  final ThemeTextStyle headlineLarge;

  @override
  ThemeExtension<ThemeText> copyWith({
    ThemeTextStyle? bodySmall,
    ThemeTextStyle? bodyMedium,
    ThemeTextStyle? bodyLarge,
    ThemeTextStyle? titleSmall,
    ThemeTextStyle? titleMedium,
    ThemeTextStyle? titleLarge,
    ThemeTextStyle? headlineSmall,
    ThemeTextStyle? headlineMedium,
    ThemeTextStyle? headlineLarge,
  }) {
    return ThemeText(
      bodySmall: bodySmall ?? this.bodySmall,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      titleSmall: titleSmall ?? this.titleSmall,
      titleMedium: titleMedium ?? this.titleMedium,
      titleLarge: titleLarge ?? this.titleLarge,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineLarge: headlineLarge ?? this.headlineLarge,
    );
  }

  @override
  ThemeExtension<ThemeText> lerp(
    covariant ThemeExtension<ThemeText>? other,
    double t,
  ) {
    if (other is! ThemeText) return this;

    return ThemeText(
      bodySmall: t < 0.5 ? bodySmall : other.bodySmall,
      bodyMedium: t < 0.5 ? bodyMedium : other.bodyMedium,
      bodyLarge: t < 0.5 ? bodyLarge : other.bodyLarge,
      titleSmall: t < 0.5 ? titleSmall : other.titleSmall,
      titleMedium: t < 0.5 ? titleMedium : other.titleMedium,
      titleLarge: t < 0.5 ? titleLarge : other.titleLarge,
      headlineSmall: t < 0.5 ? headlineSmall : other.headlineSmall,
      headlineMedium: t < 0.5 ? headlineMedium : other.headlineMedium,
      headlineLarge: t < 0.5 ? headlineLarge : other.headlineLarge,
    );
  }
}

class ThemeTextStyle {
  const ThemeTextStyle({
    required this.size,
    required this.weight,
  });

  final double size;
  final FontWeight weight;
}
