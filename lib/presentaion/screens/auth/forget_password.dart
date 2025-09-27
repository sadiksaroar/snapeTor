import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/presentaion/widgets/custom_eamil/custom_email.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  bool isEmailFilled = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {
        isEmailFilled = emailController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    emailController.dispose();
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
          ), // ✅ Added comma
          onPressed: () {
            context.pop('/signin');
          },
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 60,
                child: Text(
                  "Forget  Pasword",
                  style: const TextStyle(
                    fontFamily:
                        "NunitoSans", // <-- make sure it's added in pubspec.yaml
                    fontWeight: FontWeight.w700, // 700 = Bold
                    fontStyle: FontStyle.normal, // Bold handled by fontWeight
                    fontSize: 18,
                    height: 20 / 18, // line-height ÷ font-size = 1.11
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Please enter your email to reset the password",
                  style: TextStyle(
                    color: Color(0xFF848484),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400, // Regular
                    fontStyle: FontStyle.normal, // Regular is normal style
                    fontSize: 14.0,
                    height:
                        1.5, // line-height: 24px (height = line height / font size)
                    letterSpacing: 0.0, // 0px letter-spacing
                  ),
                ),
              ),
              const SizedBox(height: 24),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  const SizedBox(height: 10),
                  CustomEmailField(
                    // label: "Email",
                    // icon: Icons.email, // You need to specify an icon here
                    hintText: "emilysm@gmail.com",
                    controller: emailController,
                    // opatictyColor: '', // Optional, only if needed
                  ),
                ],
              ),
              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  onPressed: isEmailFilled
                      ? () {
                          context.push('/enterCode');
                        }
                      : null,
                  // AppColors.primaryOrange
                  backgroundColor: isEmailFilled
                      ? AppColors.primaryBackground
                      : const Color(0x804F85AA),
                  borderRadius: 15,
                  child: Text(
                    "Reset Password",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0xFFF8F9FB),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
