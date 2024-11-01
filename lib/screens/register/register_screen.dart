import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../componets/ui/custom_textfield.dart';
import '../../componets/ui/social_buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: const Color(0xFFE8F5E9),
                  shape: const CircleBorder(),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2D6A4F),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Create your new account',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Image.asset('assets/green-leaf.png', height: 80, width: 40),
                  ],
                ),
                // const SizedBox(height: 8),
                const SizedBox(height: 32),
                const CustomTextField(
                  hintText: 'Full Name',
                  prefixIcon: Icons.person_outline,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'user@mail.com',
                  prefixIcon: Icons.email_outlined,
                  isEmail: true,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                ),
                const SizedBox(height: 32),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          toggleCheck();
                        },
                        child: Row(children: [
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
                const SizedBox(height: 24),
                Center(
                  child: Text(
                    'Or continue with',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      icon: FontAwesomeIcons.facebook,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    SocialButton(
                      icon: FontAwesomeIcons.google,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    SocialButton(
                      icon: FontAwesomeIcons.apple,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.poppins(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF2D6A4F),
                          fontWeight: FontWeight.w600,
                          // color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
