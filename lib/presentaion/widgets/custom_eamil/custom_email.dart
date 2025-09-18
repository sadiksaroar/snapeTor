import 'package:flutter/material.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class CustomEmailField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomEmailField({
    Key? key,
    required this.controller,
    this.hintText = "Enter your email",
  }) : super(key: key);

  @override
  State<CustomEmailField> createState() => _CustomEmailFieldState();
}

class _CustomEmailFieldState extends State<CustomEmailField> {
  String? errorText;

  bool _isValidEmail(String email) {
    // Simple email regex
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        setState(() {
          if (value.isEmpty) {
            errorText = "Email is required";
          } else if (!_isValidEmail(value)) {
            errorText = "Enter a valid email";
          } else {
            errorText = null;
          }
        });
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Roboto',
          color: AppColors.primaryText,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: Colors.grey[50],
        suffixIcon: Icon(
          Icons.email,
          color: Colors.grey[400],
        ), // 👈 email icon left side
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF5B9BD5), width: 2),
        ),
        errorText: errorText, // 👈 shows validation error
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
  }
}
