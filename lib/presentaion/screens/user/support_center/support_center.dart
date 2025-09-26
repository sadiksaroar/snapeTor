import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SupportCenterPage extends StatelessWidget {
  const SupportCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundWhite,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Assets.icons.backIconEditProfile.image(height: 44, width: 44),
        ),
        centerTitle: true,
        title: const Text(
          "Support Center",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundWhite,
    );
  }
}
