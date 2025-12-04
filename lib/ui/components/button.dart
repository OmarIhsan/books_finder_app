import 'package:flutter/material.dart';
import '../../core/design_tokens.dart';

enum ButtonVariant { primary, ghost, destructive }

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final EdgeInsetsGeometry padding;

  const CustomButton.primary({
    required this.label,
    required this.onPressed,
    Key? key,
  }) : variant = ButtonVariant.primary,
       padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
       super(key: key);

  const CustomButton.ghost({
    required this.label,
    required this.onPressed,
    Key? key,
  }) : variant = ButtonVariant.ghost,
       padding = const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
       super(key: key);

  const CustomButton.destructive({
    required this.label,
    required this.onPressed,
    Key? key,
  }) : variant = ButtonVariant.destructive,
       padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
       super(key: key);

  Color _bgColor(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
        return DT.accent;
      case ButtonVariant.destructive:
        return DT.danger;
      case ButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  Color _fgColor(BuildContext context) {
    switch (variant) {
      case ButtonVariant.ghost:
        return DT.primary;
      case ButtonVariant.primary:
      case ButtonVariant.destructive:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bg = _bgColor(context);
    final fg = _fgColor(context);

    return Material(
      color: bg,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: padding,
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: fg, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
