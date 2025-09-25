import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isNewPasswordObscure = true;
  bool _isConfirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundWhite,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Assets.icons.backIconEditProfile.image(height: 44, width: 44),
          color: AppColors.primaryText,
        ),
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Old Password
            const Text(
              "Old Password",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            TextField(
              controller: _oldPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                // hintText: "Enter old password",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // New Password
            const Text(
              "New Password",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            TextField(
              controller: _newPasswordController,
              obscureText: _isNewPasswordObscure,
              decoration: InputDecoration(
                // hintText: "Enter new password",
                border: const UnderlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isNewPasswordObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isNewPasswordObscure = !_isNewPasswordObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Confirm Password
            const Text(
              "Confirm Password",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            TextField(
              controller: _confirmPasswordController,
              obscureText: _isConfirmPasswordObscure,
              decoration: InputDecoration(
                // hintText: "Re-enter new password",
                border: const UnderlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordObscure
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordObscure = !_isConfirmPasswordObscure;
                    });
                  },
                ),
              ),
            ),

            //
            SizedBox(height: 20),
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
                // context.go('/homePage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
