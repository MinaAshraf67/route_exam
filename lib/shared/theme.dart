import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color secondaryColor = const Color(0xFF141A2E);
  static Color whiteColor = Colors.white;
  static Color blackColor = const Color(0xFF242424);
  static Color darkYellowColor = const Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(
        fontSize: 14.0,
        color: blackColor,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 16.0,
        color: blackColor,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 18.0,
        color: blackColor,
      ),
      titleLarge: GoogleFonts.inter(
        fontSize: 24.0,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
