import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleTheme {
  static TextTheme textTheme = TextTheme(
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    subtitle2: subtitle2,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
    caption: caption,
  );

  static TextStyle headline4 = GoogleFonts.acme(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    height: 0.9,
  );
  static TextStyle headline5 = GoogleFonts.acme(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.27,
  );
  static TextStyle headline6 = GoogleFonts.acme(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.18,
  );
  static TextStyle subtitle2 = GoogleFonts.acme(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.04,
  );
  static TextStyle bodyText1 = GoogleFonts.acme(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );
  static TextStyle bodyText2 = GoogleFonts.acme(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
  );
  static TextStyle caption = GoogleFonts.acme(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
  );
  static TextStyle headline2 = GoogleFonts.acme(
    fontSize: 48,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.27,
  );
  static TextTheme darkTextTheme = TextTheme(
    headline2: headline2.copyWith(),
    headline4: headline4.copyWith(),
    headline5: headline5.copyWith(),
    headline6: headline6.copyWith(),
    subtitle2: subtitle2.copyWith(),
    bodyText1: bodyText1.copyWith(),
    bodyText2: bodyText2.copyWith(),
    caption: caption.copyWith(),
  );
}
