import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pallete {
  // 🎨 Colors
  static const Color greenColor = Color(0xFF38E07B);
  static const Color secondaryColor = Color(0xFF96C5A9);
  static const Color backgroundColor = Color(0xFF122118);
  static const Color surfaceColor = Color(0xFF1A2D23);
  static const Color cardColor = Color(0xFF264532);
  static const Color navBgColor = Color(0xFF1B3124);
  static const Color errorColor = Color(0xFFF87171);

  // 🌙 Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: greenColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: greenColor,
      secondary: secondaryColor,
      background: backgroundColor,
      surface: surfaceColor,
      error: errorColor,
    ),
    textTheme: GoogleFonts.lexendTextTheme().copyWith(
      bodyMedium: GoogleFonts.notoSans(color: Colors.white),
      bodySmall: GoogleFonts.notoSans(color: secondaryColor),
      titleLarge: GoogleFonts.lexend(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      titleTextStyle: GoogleFonts.lexend(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: GoogleFonts.lexend(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
