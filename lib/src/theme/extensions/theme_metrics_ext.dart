import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeMetrics extends ThemeExtension<ThemeMetrics> {
  const ThemeMetrics({
    required this.smaller,
    required this.small,
    required this.medium,
    required this.large,
    required this.icon,
    required this.blur,
    required this.radius,
    required this.border,
    required this.button,
    required this.iconButton,
    required this.curve,
    required this.duration,
  });

  final double smaller;
  final double small;
  final double medium;
  final double large;
  final double icon;
  final double blur;
  final double radius;
  final double border;
  final Size button;
  final Size iconButton;
  final Curve curve;
  final Duration duration;

  @override
  ThemeExtension<ThemeMetrics> copyWith({
    double? smaller,
    double? small,
    double? medium,
    double? large,
    double? icon,
    double? blur,
    double? radius,
    double? border,
    Size? button,
    Size? iconButton,
    Curve? curve,
    Duration? duration,
  }) {
    return ThemeMetrics(
      smaller: smaller ?? this.smaller,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      icon: icon ?? this.icon,
      blur: blur ?? this.blur,
      radius: radius ?? this.radius,
      border: border ?? this.border,
      button: button ?? this.button,
      iconButton: iconButton ?? this.iconButton,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
    );
  }

  @override
  ThemeExtension<ThemeMetrics> lerp(
    covariant ThemeExtension<ThemeMetrics>? other,
    double t,
  ) {
    if (other is! ThemeMetrics) return this;

    return ThemeMetrics(
      smaller: lerpDouble(smaller, other.smaller, t)!,
      small: lerpDouble(small, other.small, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      large: lerpDouble(large, other.large, t)!,
      icon: lerpDouble(icon, other.icon, t)!,
      blur: lerpDouble(blur, other.blur, t)!,
      radius: lerpDouble(radius, other.radius, t)!,
      border: lerpDouble(border, other.border, t)!,
      button: .lerp(button, other.button, t)!,
      iconButton: .lerp(iconButton, other.iconButton, t)!,
      curve: t < 0.5 ? curve : other.curve,
      duration: lerpDuration(duration, other.duration, t),
    );
  }
}
