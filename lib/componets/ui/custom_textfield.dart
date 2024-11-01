import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  // final IconData sufixIcon;
  final bool isEmail;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.isEmail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0xFF2D6A4F),
          ),
          suffixIcon: isPassword
              ? const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFF2D6A4F),
                )
              : isEmail
                  ? const Icon(
                      Icons.check,
                      color: Color(0xFF2D6A4F),
                    )
                  : null,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    );
  }
}
