import 'package:flutter/material.dart';

ThemeData? darkAppTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primaryColor: const Color(0xff0197a5),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff0197a5),
      onPrimary: Colors.white,
      secondary: Color(0xff444444),
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xff222222),
      onSurface: Colors.white,
    ),
  );
}
