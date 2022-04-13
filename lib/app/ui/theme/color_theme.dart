import 'package:flutter/material.dart';

class ColorTheme {
  static const Color primary = Colors.grey;
  static const Color primaryTint = Color(0xFF2390A5);
  static const Color secondary = Color.fromRGBO(242, 139, 50, 1);
  static const Color tertiary = Color.fromARGB(255, 0, 8, 255);

  static const Color success = Color.fromARGB(255, 10, 255, 88);
  static const Color successTint = Color.fromARGB(255, 9, 106, 232);
  static const Color warning = Color.fromARGB(255, 242, 139, 50);
  static const Color danger = Color.fromARGB(255, 255, 29, 0);
  static Color dark = const Color.fromARGB(255, 54, 53, 53).withOpacity(0.9);
  static const Color medium = Color.fromARGB(255, 233, 231, 228);
  static const Color light = Color.fromARGB(255, 255, 255, 255);
  // TODO gradients

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      primary,
      primaryTint,
    ],
    stops: <double>[0.6, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.mirror,
  );

  //TODO material colors
  static Map<int, Color> primaryMap = {
    50: ColorTheme.primary.withOpacity(0.05),
    100: ColorTheme.primary.withOpacity(0.1),
    200: ColorTheme.primary.withOpacity(0.2),
    300: ColorTheme.primary.withOpacity(0.3),
    400: ColorTheme.primary.withOpacity(0.4),
    500: ColorTheme.primary,
    600: ColorTheme.primary.withOpacity(0.6),
    700: ColorTheme.primary.withOpacity(0.7),
    800: ColorTheme.primary.withOpacity(0.8),
    900: ColorTheme.primary.withOpacity(0.9),
  };
}
