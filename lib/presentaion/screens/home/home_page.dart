import 'package:flutter/material.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryElements,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryElements,
        title: Row(
          children: [
            Assets.images.juuniad.image(height: 40, width: 40),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello", style: AppTextStyles.inter14Center),
                Text(
                  "Andul Al desgin",
                  style: AppTextStyles.nunito16BoldCenter,
                ),
              ],
            ),
            const Spacer(),

            // Last: Icon
            IconButton(
              onPressed: () {},
              icon: Assets.icons.icBaselinePlus.image(height: 30, width: 30),
              color: AppColors.primaryText,
            ),
            // Last: Icon
            IconButton(
              onPressed: () {},
              icon: Assets.icons.search.image(height: 30, width: 30),
              color: AppColors.primaryText,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.all(20),
              height: 41,
              width: 353,
              decoration: BoxDecoration(
                // color: AppColors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.secondaryText),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Assets.icons.homConaitnerGalley.image(),
                  hintText: "What's on your mind?",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: AppColors.greyBackground),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: Assets.images.j.provider(),
                  ),
                  title: const Text(
                    "Abdullah Al Junaid",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: AppColors.primaryText,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Naples, Italy",
                        style: TextStyle(color: AppColors.primaryText),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize
                        .min, // important so it doesn’t take full width
                    children: const [
                      Icon(Icons.access_time, color: Colors.grey, size: 16),
                      SizedBox(width: 4), // spacing between icon and text
                      Text(
                        "1 hr",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryText,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg", // replace with your uploaded image if local
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Assets.icons.homeInComment.image(),
                              const SizedBox(
                                width: 8,
                              ), // space between icon and text
                              const Text(
                                "Asif Mohammad + 750",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Text("Isha"),
                              SizedBox(width: 20),
                              Text("Sadik"),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Sadik"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
