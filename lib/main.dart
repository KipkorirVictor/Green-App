import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        primaryColor: const Color(0xFF2D6A4F),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const OnboardingScreen(),
    );
  }
}
