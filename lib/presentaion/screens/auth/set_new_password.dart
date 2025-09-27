import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/presentaion/widgets/custom_text_field/custom_text_field.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isCodeFilled = false;
  bool showError = false;

  @override
  void initState() {
    super.initState();
    // Add listeners for real-time validation
    passwordController.addListener(_validatePasswords);
    confirmPasswordController.addListener(_validatePasswords);
  }

  void _validatePasswords() {
    setState(() {
      isCodeFilled =
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty &&
          passwordController.text == confirmPasswordController.text;

      showError =
          confirmPasswordController.text.isNotEmpty &&
          passwordController.text != confirmPasswordController.text;
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: Assets.icons.backIcon.image(
            height: 30,
            width: 30,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            context.pop(""); // back navigation
          },
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Set a new password",
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Create a new password. Ensure it differs from previous ones for security",
                style: TextStyle(
                  color: Color(0xFF848484),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),

              // Password field
              const Text(
                "Password",
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                isPassword: true,
                opatictyColor: "",
              ),
              const SizedBox(height: 16),

              // Confirm password field
              const Text(
                "Confirm Password",
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              CustomTextField(
                hintText: "Confirm Password",
                controller: confirmPasswordController,
                isPassword: true,
                opatictyColor: '',
              ),

              // Error message
              if (showError)
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Passwords do not match!",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              const SizedBox(height: 30),

              // Confirm Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  onPressed: isCodeFilled
                      ? () {
                          context.push(
                            '/passwordUpdate',
                          ); // navigate after reset
                        }
                      : null, // disables when invalid
                  backgroundColor: isCodeFilled
                      ? AppColors.primaryBackground
                      : const Color(0x804F85AA),
                  borderRadius: 15,
                  child: Text(
                    "Update Password",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: const Color(0xFFF8F9FB),
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
