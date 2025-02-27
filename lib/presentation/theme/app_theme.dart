import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ),
      chipTheme: ChipThemeData(
        shape: StadiumBorder(),
        padding: EdgeInsets.all(0.0),
        labelPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: -4.0),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.dark,
      ),
      chipTheme: ChipThemeData(
        shape: StadiumBorder(),
        padding: EdgeInsets.all(0.0),
        labelPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: -2.0),
      ),
    );
  }
}
