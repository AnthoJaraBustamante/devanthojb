import 'package:devanthojb/app/ui/theme/color_theme.dart';
import 'package:devanthojb/app/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: ColorTheme.light,
    primaryColor: ColorTheme.primary,
    appBarTheme: const AppBarTheme(
      color: ColorTheme.primary,
      centerTitle: true,
    ),
    primarySwatch:
        MaterialColor(ColorTheme.primaryMap[900]!.value, ColorTheme.primaryMap),
    primaryTextTheme: const TextTheme(),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorTheme.primary,
      selectionColor: ColorTheme.primary.withOpacity(0.4),
      selectionHandleColor: ColorTheme.primary,
    ),
    textTheme: TextStyleTheme.textTheme,
    dividerColor: ColorTheme.dark,
  );
  static final ThemeData darkThemeData = ThemeData(
    scaffoldBackgroundColor: ColorTheme.dark,
    primaryColor: ColorTheme.primary,
    appBarTheme: const AppBarTheme(
      color: ColorTheme.primary,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    primarySwatch:
        MaterialColor(ColorTheme.primaryMap[900]!.value, ColorTheme.primaryMap),
    primaryTextTheme: TextStyleTheme.darkTextTheme,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorTheme.primary,
      selectionColor: ColorTheme.primary.withOpacity(0.4),
      selectionHandleColor: ColorTheme.primary,
    ),
    textTheme: TextStyleTheme.darkTextTheme,
    primaryIconTheme: const IconThemeData(color: ColorTheme.light),
    iconTheme: const IconThemeData(color: ColorTheme.light),
    hintColor: ColorTheme.light,
    brightness: Brightness.dark,
    dividerColor: ColorTheme.light,
  );
}
