import 'package:flutter/material.dart';

import './constants.dart';
import './pages/home.dart';
import './pages/login.dart';
import './bottom_navbar.dart';
import './pages/register.dart';
import './pages/reset_password.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kThemeData.copyWith(),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginPage(),
        '/loginPage': (_) => const LoginPage(),
        '/registerPage': (_) => const RegisterPage(),
        '/resetPasswordPage': (_) => const ResetPasswordPage(),
        '/bottomNavbar': (_) => const BottomNavbar(),
        '/homePage': (_) => const HomePage(),
      },
    );
  }
}
