import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/presentaion/widgets/custom_eamil/custom_email.dart';
import 'package:snape_tour/presentaion/widgets/custom_text_field/custom_text_field.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SiginInViews extends StatefulWidget {
  const SiginInViews({super.key});

  @override
  State<SiginInViews> createState() => _SiginInViewsState();
}

class _SiginInViewsState extends State<SiginInViews> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 88,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: const Color(0xFF5B9BD5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Assets.images.signInScreen.image(
                          height: 78.h,
                          width: 84.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        // color: const Color(0xFF5B9BD5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            color: AppColors.primaryBackground,
                            fontWeight: FontWeight.w700, // SemiBold
                            fontStyle: FontStyle.normal,
                            fontSize: 24.0,

                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: CustomEmailField(
                      // label: "Email",
                      //  icon: Icons.email, // You need to specify an icon here
                      hintText: "Email",
                      controller: emailController,
                      // Optional, only if needed
                    ),
                  ),
                  const SizedBox(height: 15),

                  const SizedBox(height: 10),
                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    isPassword: true,
                    opatictyColor: '', // This enables suffixIcon toggle
                  ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        },
                        activeColor: const Color(0xFF5B9BD5),
                        // materialTapTargetSize: materialTapTargetSize.shri,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),

                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w600, // SemiBold
                          fontStyle: FontStyle
                              .normal, // SemiBold has no specific font-style in Flutter
                          fontSize: 14.0,
                          height:
                              1.0, // 100% line-height (this is the same as line-height: 100%)
                          letterSpacing: 0.0, // 0% letter-spacing
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  TextButton(
                    onPressed: () {
                      // Forgot password action
                      // context.go()
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: InkWell(
                      onTap: () => {context.go("/forgetPasswordScreen")},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400, // Regular
                          fontStyle: FontStyle.normal, // Regular
                          fontSize: 14.0,
                          height: 1.0, // 100% line-height
                          letterSpacing: 0.0, // 0px letter-spacing
                          color: AppColors.primaryBackground,

                          decorationStyle:
                              TextDecorationStyle.solid, // Solid underline
                          decorationThickness: 1.0, // Default thickness
                          // Skip ink (use if needed)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              // here of this screen login
              CustomButton(
                backgroundColor: AppColors.primaryBackground,
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                  ),
                ),
                onPressed: () {
                  context.go('/homePage');
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have any account? ',
                    style: GoogleFonts.openSans(
                      color: Color(0xFF333333), // Correct color
                      fontSize: 14, // 24px
                      fontWeight: FontWeight.w400, // SemiBold
                      fontStyle: FontStyle.normal, // normal style
                      height: 1.0, // line-height: 100%
                      letterSpacing: 0.0, // letter-spacing: 0
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Sign up action
                      context.go("/signUp");
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400, // Bold
                        fontStyle:
                            FontStyle.normal, // Bold is handled by FontWeight
                        fontSize: 14.0,
                        height: 1.0, // line-height: 100%
                        letterSpacing: 0.0, // 0px letter-spacing
                        color: Color(0xFF4F85AA),
                        // Default color, change if needed
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
