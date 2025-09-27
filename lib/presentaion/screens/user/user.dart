import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  int _currentIndex = 0;

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        context.go(AppRoutePaths.homePage);
        break;
      case 1:
        context.go(AppRoutePaths.chatBoot);
        break;
      case 2:
        context.go(AppRoutePaths.explor);
        break;
      case 3:
        context.go(AppRoutePaths.user);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColors.primaryText,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Section
              GestureDetector(
                onDoubleTap: () {
                  context.push("/userProfile");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(Assets.images.juuniad.path),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          "Abdullah Al Junaid",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Options List
              GestureDetector(
                onDoubleTap: () {
                  context.push("/editProfile");
                },
                child: buildSettingsTile(
                  Assets.icons.icOutlineEdit.image(height: 18, width: 18),
                  "Edit Profile",
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  context.push("/savedExprience");
                },
                child: buildSettingsTile(
                  Assets.icons.shekMojib.image(height: 18, width: 18),
                  "Saved Experience",
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  context.push("/supportCenterPage");
                },
                child: buildSettingsTile(
                  Assets.icons.footbol.image(height: 18, width: 18),
                  "Support Center",
                ),
              ),

              GestureDetector(
                onDoubleTap: () {
                  context.push("/termsPolicyPage");
                },
                child: buildSettingsTile(
                  Assets.icons.treamPolcy.image(height: 18, width: 18),
                  "Terms & Policy",
                ),
              ),

              const SizedBox(height: 25),

              // Logout Button
              SizedBox(
                width: double.infinity,
                height: 45,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(color: Colors.blue),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Delete Account Button
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Delete Account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: _onNavTap,
        currentIndex: _currentIndex,
      ),
    );
  }

  // Accepts any Widget (Icon or Image)
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
