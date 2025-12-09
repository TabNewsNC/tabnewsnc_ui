import 'package:flutter/material.dart';

class GestureWidget extends StatelessWidget {
  const GestureWidget({
    required this.child,
    this.enabled = true,
    this.onPressed,
    this.onHover,
    this.onFocus,
    super.key,
  });

  final Widget child;
  final bool enabled;
  final VoidCallback? onPressed;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocus;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return FocusableActionDetector(
      enabled: enabled,
      onShowHoverHighlight: onHover,
      onShowFocusHighlight: onFocus,
      mouseCursor: SystemMouseCursors.click,
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) => onPressed?.call(),
        ),
      },
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
