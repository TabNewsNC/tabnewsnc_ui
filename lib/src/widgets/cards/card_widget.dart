import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/mixins/theme_mixin.dart';

class CardWidget extends StatelessWidget with ThemeMixin {
  const CardWidget({
    required this.child,
    this.width,
    this.height,
    super.key,
  });

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: .circular(metrics.radius),
        border: Border.all(
          color: colors.border,
          width: metrics.border,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(metrics.small),
        child: child,
      ),
    );
  }
}
