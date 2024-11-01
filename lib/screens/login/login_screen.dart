import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../componets/ui/custom_textfield.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  bool toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
    return isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/leaf_wave.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      color: Colors.white.withOpacity(0.7),
                      shape: const CircleBorder(),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Color(0xFF2D6A4F)),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2D6A4F),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Image.asset(
                        'assets/green-leaf.webp',
                        height: 24,
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Login to your account',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const CustomTextField(
                    hintText: 'Full Name',
                    prefixIcon: Icons.person_outline,
                  ),
                  const SizedBox(height: 16),
                  const CustomTextField(
                    hintText: 'Password',
                    prefixIcon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            toggleCheck();
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  isChecked
                                      ? Icons.check_circle
                                      : Icons.check_circle_outline,
                                  color: Color(0xFF2D6A4F),
                                  size: 20,
                                ),
                                Text(
                                  'Remember Me',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      // const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF2D6A4F),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2D6A4F),
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account? ",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF2D6A4F),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
