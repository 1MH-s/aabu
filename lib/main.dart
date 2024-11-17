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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(

      ),
    );
  }
}