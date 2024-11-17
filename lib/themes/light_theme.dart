import 'package:flutter/material.dart';

ThemeData? lightAppTheme() {
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: const Color(0xff00b1c1),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00b1c1),
      onPrimary: Colors.white,
      secondary: Color(0xffaaaaaa),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );
}