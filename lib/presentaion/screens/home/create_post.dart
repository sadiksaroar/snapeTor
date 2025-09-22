import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class Createpostpage extends StatefulWidget {
  const Createpostpage({super.key});

  @override
  State<Createpostpage> createState() => _CreatepostpageState();
}

class _CreatepostpageState extends State<Createpostpage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.pop("/createpostpage");
          },
          icon: Assets.icons.croossIcon.image(height: 30, width: 30),
          color: AppColors.primaryText,
        ),
        centerTitle: true,
        title: const Text(
          "Create post",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "Post",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),

      backgroundColor: AppColors.backgroundWhite,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: Assets.images.juuniad.provider(),
                    ),
                    SizedBox(width: 12),
                    const Text(
                      "Abdullah Al Junaid",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                // const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Background container (bottom sheet style)
          Positioned(
            // top: screenHeight * 0.55, // responsive height
            top: 520,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.secondaryElements,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Drag handle
                      Container(
                        height: 6,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Bottom items
                      _bottomItem(
                        Assets.icons.homConaitnerGalley.path,
                        "Photo/ Video",
                        AppColors.brightGreen,
                      ),
                      const SizedBox(height: 20),
                      _bottomItem(
                        Assets.icons.usrrProfile.path,
                        "Tag people",
                        AppColors.secondaryText,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          context.push("/cheackIn");
                        },
                        child: _bottomItem(
                          Assets.icons.carbonLocation.path,
                          "Check in",
                          Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomItem(String assetPath, String text, Color color) {
    return Row(
      children: [
        Image.asset(
          assetPath,
          width: 24,
          height: 24,
          color: color, // optional, tints the icon
        ),
        const SizedBox(width: 10),
        Text(text, style: AppTextStyles.medium18Center),
      ],
    );
  }
}
