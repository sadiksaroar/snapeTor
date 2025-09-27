import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class PasswordUpdate extends StatelessWidget {
  const PasswordUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryElements,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image
              Assets.icons.forgetPasswordIconWriteIcon.image(
                height: 98.h,
                width: 98.w,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20.h),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Successful",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: 'Roboto Serif',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // Ditiyo Text
                    Text(
                      textAlign: TextAlign.center,
                      "Congratulations! Your password has \n  been changed.Click continue to login.",
                      style: TextStyle(
                        color: Color(0xFF848484),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // Button
              CustomButton(
                backgroundColor: AppColors.primaryBackground,
                child: Text(
                  "PasswordUpdated",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                  ),
                ),
                onPressed: () {
                  context.push('/homePage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
