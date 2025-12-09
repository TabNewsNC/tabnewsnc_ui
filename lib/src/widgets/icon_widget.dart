import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/widgets/text_widget.dart';
import 'package:tabnewsnc_ui/tabnewsnc_ui.dart';

class IconWidget extends StatelessWidget with ThemeMixin {
  const IconWidget(
    this.icon, {
    this.label,
    this.size,
    this.color,
    super.key,
  });

  final IconData icon;
  final String? label;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);
    final newColor = color ?? colors.onBackground;

    final iconWidget = Icon(
      icon,
      color: newColor,
      size: size ?? metrics.icon,
    );

    if (label == null) return iconWidget;
    return Row(
      mainAxisSize: .min,
      spacing: metrics.xSmall,
      children: [
        iconWidget,
        if (label != null) TextWidget(label!, color: newColor),
      ],
    );
  }
}
