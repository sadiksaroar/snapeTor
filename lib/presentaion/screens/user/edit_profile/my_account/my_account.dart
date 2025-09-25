import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/widgets/custom_button/custom_button.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final TextEditingController firstNameController = TextEditingController(
    text: "Abdullah Al",
  );
  final TextEditingController lastNameController = TextEditingController(
    text: "Junaid",
  );

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'First name',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(color: Colors.grey[300]!),
              ),
              child: TextFormField(
                controller: firstNameController,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  // Remove the TextFormField default borders so the container's border shows
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1, height: 4),

            const Text(
              'Last name',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(color: Colors.grey[300]!),
              ),
              child: TextFormField(
                controller: lastNameController,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            // const Divider(thickness: 1, height: 0),
            const Divider(thickness: 1, height: 0),
            SizedBox(height: 35),
            // here of this screen login
            CustomButton(
              backgroundColor: AppColors.primaryBackground,
              child: Text(
                "Edit Profile ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.0,
                ),
              ),
              onPressed: () {
                context.go('/homePage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
