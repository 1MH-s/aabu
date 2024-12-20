import 'package:aabu/middlewares/auth_middleware.dart';
import 'package:aabu/themes/dark_theme.dart';
import 'package:aabu/themes/light_theme.dart';
import 'package:aabu/views/home_page.dart';
import 'package:aabu/views/user_gates/login_page.dart';
import 'package:aabu/views/user_gates/register_page.dart';
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
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AABU',
        themeMode: ThemeMode.light,
        theme: lightAppTheme(),
        darkTheme: darkAppTheme(),
        getPages: [
          GetPage(
              name: "/",
              page: () => const LoginPage(),
              middlewares: [AuthMiddleWare()]),
          GetPage(name: "/register_page", page: () => const RegisterPage()),
          GetPage(name: "/home_page", page: () => const HomePage()),
          //GetPage(name: "/qr_attendance", page: () => const QrAttendance()),
        ],
      ),
    );
  }
}
