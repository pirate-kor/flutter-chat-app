import 'package:chatapp/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(centerTitle: false, elevation: 0),
      iconTheme: const IconThemeData(color: contentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: contentColorLightTheme),
      colorScheme: const ColorScheme.light(
          primary: primaryColor, secondary: secondaryColor, error: errorColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: contentColorLightTheme.withOpacity(0.7),
          unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
          selectedIconTheme: const IconThemeData(color: primaryColor),
          showUnselectedLabels: true));
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: contentColorLightTheme,
      appBarTheme: const AppBarTheme(centerTitle: false, elevation: 0),
      iconTheme: const IconThemeData(color: contentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: contentColorDarkTheme),
      colorScheme: const ColorScheme.light(
          primary: primaryColor, secondary: secondaryColor, error: errorColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: contentColorLightTheme,
          selectedItemColor: Colors.white70,
          unselectedItemColor: contentColorDarkTheme.withOpacity(0.32),
          selectedIconTheme: const IconThemeData(color: primaryColor),
          showUnselectedLabels: true));
}
