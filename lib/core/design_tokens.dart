import 'package:flutter/material.dart';

/// Tailwind-inspired design tokens and utility helpers.
class DT {
  // Colors
  static const Color primary = Color(0xFF0F172A); // slate-900
  static const Color primaryLight = Color(0xFF334155); // slate-700
  static const Color accent = Color(0xFF6366F1); // indigo-400
  static const Color surface = Color(0xFFF8FAFC); // slate-50
  static const Color muted = Color(0xFF64748B); // slate-500
  static const Color danger = Color(0xFFEF4444); // red-500

  // Spacing (Tailwind-like scale)
  static const double s0 = 0.0;
  static const double s1 = 4.0; // 1
  static const double s2 = 8.0; // 2
  static const double s3 = 12.0; // 3
  static const double s4 = 16.0; // 4
  static const double s6 = 24.0; // 6
  static const double s8 = 32.0; // 8
  static const double s10 = 40.0; // 10

  // Radii
  static const Radius roundedSm = Radius.circular(6);
  static const Radius rounded = Radius.circular(12);

  // Typography
  static TextTheme textTheme([Color color = Colors.black87]) => TextTheme(
    bodyLarge: TextStyle(fontSize: 16, color: color),
    bodyMedium: TextStyle(fontSize: 14, color: color),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color,
    ),
  );

  // Elevations
  static const double cardElevation = 0.8;
}
