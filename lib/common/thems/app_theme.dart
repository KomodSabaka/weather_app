import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/common/constants/palette.dart';

class AppTheme {
  ThemeData get dark {
    var textFieldBorder = const OutlineInputBorder(borderSide: BorderSide.none);
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Palette.primaryDark,
      hintColor: Palette.hintDark,
      cardColor: Palette.hourlyChipDark,
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
          elevation: MaterialStatePropertyAll<double?>(40),
        ),
      ),
      switchTheme: const SwitchThemeData(
        thumbColor: MaterialStatePropertyAll<Color?>(Palette.thumb),
        trackColor: MaterialStatePropertyAll<Color?>(Palette.track),
      ),
      iconTheme: const IconThemeData(
        color: Palette.iconDark,
      ),
    );
  }

  ThemeData get light {
    var textFieldBorder = const OutlineInputBorder(borderSide: BorderSide.none);
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Palette.primaryLight,
      hintColor: Palette.hintLight,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.w800,
          color: Palette.textLight,
        ),
        displayMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: Palette.textLight,
        ),
        displaySmall: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Palette.textLight,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Palette.textLight,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Palette.textLight,
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
          elevation: MaterialStatePropertyAll<double?>(40),
        ),
      ),
      switchTheme: const SwitchThemeData(
        thumbColor: MaterialStatePropertyAll<Color?>(Palette.thumb),
        trackColor: MaterialStatePropertyAll<Color?>(Palette.track),
      ),
      iconTheme: const IconThemeData(
        color: Palette.iconLight,
      ),
    );
  }
}
