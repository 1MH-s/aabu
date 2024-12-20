import 'package:aabu/themes/dark_theme.dart';
import 'package:aabu/themes/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AabuApp());
}

class AabuApp extends StatelessWidget {
  const AabuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AABU',
      themeMode: ThemeMode.light,
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: const Scaffold(),
    );
  }
}
