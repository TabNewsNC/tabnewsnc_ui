import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/tabnewsnc_ui.dart';

enum TextWidgetSize {
  bodySmall,
  bodyMedium,
  bodyLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
}

class TextWidget extends StatelessWidget with ThemeMixin {
  const TextWidget(
    this.text, {
    this.maxLines = 1,
    this.size = .bodyMedium,
    this.color,
    super.key,
  });

  final String text;
  final int maxLines;
  final TextWidgetSize size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = getThemeData(context);
    final colors = getThemeColors(context);

    late TextStyle style;
    switch (size) {
      case .bodySmall:
        style = theme.textTheme.bodySmall!;
      case .bodyMedium:
        style = theme.textTheme.bodyMedium!;
      case .bodyLarge:
        style = theme.textTheme.bodyLarge!;
      case .titleSmall:
        style = theme.textTheme.titleSmall!;
      case .titleMedium:
        style = theme.textTheme.titleMedium!;
      case .titleLarge:
        style = theme.textTheme.titleLarge!;
      case .headlineSmall:
        style = theme.textTheme.headlineSmall!;
      case .headlineMedium:
        style = theme.textTheme.headlineMedium!;
      case .headlineLarge:
        style = theme.textTheme.headlineLarge!;
    }

    return Text(
      text,
      maxLines: maxLines,
      overflow: .ellipsis,
      style: style.copyWith(color: color ?? colors.onBackground),
    );
  }
}
