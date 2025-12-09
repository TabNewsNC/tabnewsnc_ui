import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/theme/extensions/theme_colors_ext.dart';

class DefaultThemeLightColors extends ThemeColors {
  const DefaultThemeLightColors({
    super.primary = const Color(0xFF0969da),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.secondary = const .fromRGBO(255, 255, 255, 0.8),
    super.onSecondary = const Color(0xFF1F2328),
    super.surface = const Color(0xFFF6F8FA),
    super.onSurface = const Color(0xFF24292F),
    super.onSurfaceAlt = const Color(0xFF656d76),
    super.danger = const Color.fromRGBO(200, 0, 0, 1),
    super.onDanger = Colors.white,
    super.warning = const Color.fromRGBO(200, 200, 0, 1),
    super.onWarning = Colors.black,
    super.success = const Color.fromRGBO(0, 200, 0, 1),
    super.onSuccess = Colors.white,
    super.border = const Color(0xFFD0D7DE),
    super.background = const Color(0xFFFFFFFF),
    super.onBackground = const Color(0xFF1F2328),
    super.onBackgroundAlt = const Color(0xFF656d76),
  });
}

class DefaultThemeDarkColors extends ThemeColors {
  const DefaultThemeDarkColors({
    super.primary = const Color(0xFF2F81F7),
    super.onPrimary = const Color(0xFFE6EDF3),
    super.secondary = const .fromRGBO(13, 17, 23, 0.8),
    super.onSecondary = const Color(0xFFE6EDF3),
    super.surface = const Color(0xFF161B22),
    super.onSurface = const Color(0xFFF0F6FC),
    super.onSurfaceAlt = const Color(0xFF8B949E),
    super.danger = const Color.fromRGBO(200, 0, 0, 1),
    super.onDanger = Colors.white,
    super.warning = const Color.fromRGBO(200, 200, 0, 1),
    super.onWarning = Colors.black,
    super.success = const Color.fromRGBO(0, 200, 0, 1),
    super.onSuccess = Colors.white,
    super.border = const Color(0xFF30363D),
    super.background = const Color(0xFF0D1117),
    super.onBackground = const Color(0xFFE6EDF3),
    super.onBackgroundAlt = const Color(0xFF848D97),
  });
}
