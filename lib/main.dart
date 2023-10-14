import 'package:flutter/material.dart';
import 'package:flutter_school/pages/home_page.dart';
import 'package:flutter_school/pages/login.dart';
import 'package:flutter_school/pages/menupage.dart';
import 'package:flutter_school/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true,
      colorSchemeSeed: const Color.fromARGB(255, 240, 76, 26)
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      routes: {
        '/onboardingpage':(context) => const OnBoardingScreen(),
        '/homepage':(context) => const HomePage(),
        '/Login':(context) =>  LoginPage(),
        '/Menu':(context) =>  const MenuPage(),

      },
    );
  }
}
