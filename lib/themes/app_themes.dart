import 'package:flutter/material.dart';

class AppThemes {

  static Color primary = Colors.indigo;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light
    ),
    appBarTheme: AppBarThemeData(
      backgroundColor: primary,
    )
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarThemeData(
      backgroundColor: primary
    ),
  );

}