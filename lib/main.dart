import 'package:aabu/themes/dark_theme.dart';
import 'package:aabu/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AabuApp());
}

class AabuApp extends StatelessWidget {
  const AabuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AABU',
      themeMode: ThemeMode.light,
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: const Scaffold(

      ),
    );
  }
}