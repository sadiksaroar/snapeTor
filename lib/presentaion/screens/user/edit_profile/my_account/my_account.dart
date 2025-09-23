import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
          "My Account",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
