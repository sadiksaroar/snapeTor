import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        backgroundColor: AppColors.backgroundWhite,

        leading: IconButton(
          onPressed: () {
            context.pop(); // just pop back
          },
          icon: Assets.icons.backIconEditProfile.image(height: 44, width: 44),
          color: AppColors.primaryText,
        ),
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                context.push("/myAccount");
              },
              child: buildSettingsTile(
                Assets.icons.editProfilePicture.image(height: 30, width: 30),
                "My Account",
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                context.push("/changePassword");
              },
              child: buildSettingsTile(
                Assets.icons.chagePassword.image(height: 30, width: 30),
                "Change Password",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsTile(Widget iconWidget, String title) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.secondaryElements,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: iconWidget,
        title: Text(title, style: AppTextStyles.myUserTextStyle),
      ),
    );
  }
}
