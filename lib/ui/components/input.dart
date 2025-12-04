import 'package:flutter/material.dart';
import '../../core/design_tokens.dart';

class AppInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final ValueChanged<String>? onSubmitted;

  const AppInput({this.controller, this.hint, this.onSubmitted, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use design tokens for spacing if needed
    final _ = DT.s4;
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}
