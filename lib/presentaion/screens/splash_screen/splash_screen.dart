import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay function to navigate to the next screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/siginInViews'); // update with your route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertically center
          crossAxisAlignment: CrossAxisAlignment.center, // horizontally center
          children: [
            Assets.images.splashScreen.image(
              height: 124.h, // responsive height
              width: 123.w, // responsive width
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
