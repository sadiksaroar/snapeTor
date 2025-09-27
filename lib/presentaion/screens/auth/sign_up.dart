import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/saym_customInput/saym_customInput.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 73,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.secondaryText,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Assets.images.snaptourlogo51.image(
                      height: 50.h,
                      width: 50.w,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20), // Title
                    Text(
                      "Create an account",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Username
                    const SaymCustomInput(
                      hint: "Enter your username",
                      label: "Username",
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 20),

                    // Email
                    const SaymCustomInput(
                      hint: "Enter your email",
                      label: "Email",
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 20),

                    // Password
                    const SaymCustomInput(
                      hint: "Enter password",
                      label: "Password",
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),

                    // Confirm Password
                    const SaymCustomInput(
                      hint: "Confirm password",
                      label: "Confirm Password",
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),

                    // Sign up Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          context.push("/siginInViews");
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF003D9A),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Sign in link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do you have an account? ",
                          style: GoogleFonts.roboto(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.push("/siginInViews");
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Text(
                      "Or",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.appleIcon.image(
                          height: 45.h,
                          width: 45.w,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 16),
                        // AssetGenImage get aiplaceBackground =>
                        //
                        Assets.icons.googleIcon.image(
                          height: 45.h,
                          width: 45.w,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
