import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlunxTheme {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900]
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green
      ),
      textTheme: darkTextTheme,
    );
  }

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.abel(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.white
    ),
    headline1: GoogleFonts.abel(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    headline2: GoogleFonts.abel(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
    )
  );
}