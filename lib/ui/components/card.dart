import 'package:flutter/material.dart';
import '../../core/design_tokens.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  const AppCard({required this.child, this.onTap, Key? key})
    : padding = const EdgeInsets.all(12),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    // reference design tokens to avoid unused import lints
    final _ = DT.s4;
    final card = Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: card);
    }
    return card;
  }
}
