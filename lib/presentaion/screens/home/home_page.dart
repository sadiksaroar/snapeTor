// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/core/routes/route_path.dart';
// import 'package:snape_tour/presentaion/screens/home/post_widget/post_widget.dart';
// import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';
// import 'package:snape_tour/utils/text_style/text_style.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;

//   void _onNavTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         context.go(AppRoutePaths.homePage);
//         break;
//       case 1:
//         context.go(AppRoutePaths.chatBoot);
//         break;
//       case 2:
//         context.go(AppRoutePaths.explor);
//         break;
//       case 3:
//         context.go(AppRoutePaths.user);
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//       child: Scaffold(
//         backgroundColor: AppColors.secondaryElements,
//         appBar: AppBar(
//           backgroundColor: AppColors.secondaryElements,
//           title: Row(
//             children: [
//               Assets.images.juuniad.image(height: 40, width: 40),
//               const SizedBox(width: 8),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Hello", style: AppTextStyles.inter14Center),
//                   Text(
//                     "Andul Al desgin",
//                     style: AppTextStyles.nunito16BoldCenter,
//                   ),
//                 ],
//               ),
//               const Spacer(),
//               IconButton(
//                 onPressed: () => context.push("/createpostpage"),
//                 icon: Assets.icons.icBaselinePlus.image(height: 20, width: 20),
//                 color: AppColors.primaryText,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Assets.icons.searchPng.image(height: 30, width: 30),
//                 color: AppColors.primaryText,
//               ),
//             ],
//           ),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.symmetric(vertical: 20),
//           children: [
//             _buildPostInput(),
//             const SizedBox(height: 20),
//             PostWidget(
//               userName: "Abdullah Al Junaid",
//               location: "Naples, Italy",
//               timeAgo: "1 hr",
//               postText:
//                   "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//               // postImage:
//               //     "https://upload.wikimedia.org/wikipedia/commons/e/ea/Castello_Aragonese_dell%27isola_di_Ischia.jpg",
//               postImage: Assets.images.gardenPicture.path,
//               likedBy: "Asif Mohammad",
//               // actionName: "",
//             ),
//             const SizedBox(height: 20),
//             PostWidget(
//               userName: "Abdullah Al Junaid",
//               location: "Naples, Italy",
//               timeAgo: "1 hr",
//               postText:
//                   "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//               // postImage:
//               //     "https://upload.wikimedia.org/wikipedia/commons/e/ea/Castello_Aragonese_dell%27isola_di_Ischia.jpg",
//               postImage: Assets.images.gardenPicture.path,
//               likedBy: "Asif Mohammad",
//             ),
//           ],
//         ),
//         bottomNavigationBar: CustomNavigationBar(
//           onTap: _onNavTap,
//           currentIndex: _currentIndex,
//         ),
//       ),
//     );
//   }

//   Widget _buildPostInput() {
//     return Center(
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         margin: const EdgeInsets.symmetric(horizontal: 20),
//         height: 41,
//         width: 353,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: AppColors.secondaryText),
//         ),
//         child: TextField(
//           decoration: InputDecoration(
//             suffixIcon: Assets.icons.homConaitnerGalley.image(),
//             hintText: "What's on your mind?",
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/screens/home/post_widget/post_widget.dart';
import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: AppColors.secondaryElements,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryElements,
        elevation: 0,
        title: Row(
          children: [
            Assets.images.juuniad.image(height: 40, width: 40),
            const SizedBox(width: 8),
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
            IconButton(
              onPressed: () => context.push("/createpostpage"),
              icon: Assets.icons.icBaselinePlus.image(height: 20, width: 20),
              color: AppColors.primaryText,
            ),
            IconButton(
              onPressed: () {},
              icon: Assets.icons.search.image(height: 20, width: 20),
              color: AppColors.primaryText,
            ),
          ],
        ),
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            _buildPostInput(),
            const SizedBox(height: 20),
            PostWidget(
              userName: "Abdullah Al Junaid",
              location: "Naples, Italy",
              timeAgo: "1 hr",
              postText:
                  "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
              postImage: Assets.images.gardenPicture.path,
              likedBy: "Asif Mohammad",
            ),
            const SizedBox(height: 20),
            PostWidget(
              userName: "Abdullah Al Junaid",
              location: "Naples, Italy",
              timeAgo: "1 hr",
              postText:
                  "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
              postImage: Assets.images.gardenPicture.path,
              likedBy: "Asif Mohammad",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: _onNavTap,
        currentIndex: _currentIndex,
      ),
    );
  }

  Widget _buildPostInput() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 41,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.secondaryText),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            border: InputBorder.none,
            suffixIcon: SizedBox(
              width: 24,
              height: 24,
              child: Assets.icons.homConaitnerGalley.image(),
            ),
          ),
        ),
      ),
    );
  }
}
