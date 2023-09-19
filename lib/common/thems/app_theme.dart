import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/common/constants/palette.dart';

class AppTheme {
  ThemeData get dark {
    var textFieldBorder = const OutlineInputBorder(
      borderSide: BorderSide.none
    );
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Palette.primaryDark,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.w800,
          color: Palette.textDark,
        ),
        displayMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: Palette.textDark,
        ),
        displaySmall: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Palette.textDark,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Palette.textDark,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Palette.textDark,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Palette.textDark,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: textFieldBorder,
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Palette.button),
        ),
      ),
    );
  }

  ThemeData get light {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
