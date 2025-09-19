import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  bool isCodeFilled = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
            context.push('/signin');
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
                "Check your email",
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                // textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    height: 1.5,
                    color: Color(0xFF848484), // default gray
                  ),
                  children: const [
                    TextSpan(text: "We sent a reset link to "),
                    TextSpan(
                      text: "contact@dscode.com",
                      style: TextStyle(
                        color: AppColors.primaryText, // email in black
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " enter 6 digit code that mentioned in the email",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Pin Code Field
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(16),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      inactiveFillColor: Colors.white,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      inactiveColor: Colors.grey.shade300,
                      activeColor: AppColors.primaryBackground,
                      selectedColor: AppColors.primaryBackground,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    onChanged: (value) {
                      setState(() {
                        isCodeFilled = value.length == 6;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Verify Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  onPressed: isCodeFilled
                      ? () {
                          context.go(
                            '/passwordReset',
                          ); // ✅ redirect to reset page
                        }
                      : null,
                  backgroundColor: isCodeFilled
                      ? AppColors.primaryBackground
                      : const Color(0x804F85AA),
                  borderRadius: 15,
                  child: Text(
                    "Reset Password",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: const Color(0xFFF8F9FB),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      height: 1.0,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Resend code section
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Haven’t got the email yet?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      height: 1.5,
                      color: Color(0xFF848484),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // TODO: Add resend logic
                    },
                    child: const Text(
                      "Resend email",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        height: 1.5,
                        color: AppColors.primaryBackground,
                      ),
                    ),
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
