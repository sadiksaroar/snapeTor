// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';
// import 'package:snape_tour/utils/text_style/text_style.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
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
//               SizedBox(width: 8),
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

//               // Last: Icon
//               IconButton(
//                 onPressed: () {
//                   context.push("/createpostpage");
//                 },
//                 icon: Assets.icons.icBaselinePlus.image(height: 30, width: 30),
//                 color: AppColors.primaryText,
//               ),
//               // Last: Icon
//               IconButton(
//                 onPressed: () {},
//                 icon: Assets.icons.search.image(height: 30, width: 30),
//                 color: AppColors.primaryText,
//               ),
//             ],
//           ),
//         ),
//         body: Column(
//           children: [
//             Center(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 12),
//                 margin: EdgeInsets.all(20),
//                 height: 41,
//                 width: 353,
//                 decoration: BoxDecoration(
//                   // color: AppColors.grey,
//                   borderRadius: BorderRadius.circular(15),
//                   border: Border.all(color: AppColors.secondaryText),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     suffixIcon: Assets.icons.homConaitnerGalley.image(),
//                     hintText: "What's on your mind?",
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),

//             // SizedBox(height: 20),
//             Container(
//               decoration: BoxDecoration(color: AppColors.greyBackground),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: Assets.images.j.provider(),
//                     ),
//                     title: const Text(
//                       "Abdullah Al Junaid",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Row(
//                       children: const [
//                         Icon(
//                           Icons.location_on,
//                           size: 16,
//                           color: AppColors.primaryText,
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           "Naples, Italy",
//                           style: TextStyle(color: AppColors.primaryText),
//                         ),
//                       ],
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize
//                           .min, // important so it doesn’t take full width
//                       children: const [
//                         Icon(Icons.access_time, color: Colors.grey, size: 16),
//                         SizedBox(width: 4), // spacing between icon and text
//                         Text(
//                           "1 hr",
//                           style: TextStyle(color: Colors.grey, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: AppColors.primaryText,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(0),
//                     child: Image.network(
//                       "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg", // replace with your uploaded image if local
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,

//                           children: [
//                             Row(
//                               children: [
//                                 Assets.icons.likeGreenHome.image(),
//                                 const SizedBox(
//                                   width: 8,
//                                 ), // space between icon and text
//                                 const Text(
//                                   "Asif Mohammad ",
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             Row(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Assets.icons.likeWhiteIn.image(),
//                                     const SizedBox(
//                                       width: 8,
//                                     ), // space between icon and text
//                                     const Text(
//                                       "Like",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),

//                                 SizedBox(width: 20),
//                                 Row(
//                                   children: [
//                                     Assets.icons.commentBaseIcon.image(),
//                                     const SizedBox(
//                                       width: 8,
//                                     ), // space between icon and text
//                                     const Text(
//                                       "Comment ",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Container(
//                           width: 127,
//                           height: 32,
//                           padding: const EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: AppColors.primaryBackground,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: const Center(
//                             child: Text(
//                               "Sadik",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ////////////////////////
//             ///
//             ///
//             Container(
//               decoration: BoxDecoration(color: AppColors.greyBackground),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: Assets.images.j.provider(),
//                     ),
//                     title: const Text(
//                       "Abdullah Al Junaid",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     subtitle: Row(
//                       children: const [
//                         Icon(
//                           Icons.location_on,
//                           size: 16,
//                           color: AppColors.primaryText,
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           "Naples, Italy",
//                           style: TextStyle(color: AppColors.primaryText),
//                         ),
//                       ],
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize
//                           .min, // important so it doesn’t take full width
//                       children: const [
//                         Icon(Icons.access_time, color: Colors.grey, size: 16),
//                         SizedBox(width: 4), // spacing between icon and text
//                         Text(
//                           "1 hr",
//                           style: TextStyle(color: Colors.grey, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: AppColors.primaryText,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(0),
//                     child: Image.network(
//                       "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg", // replace with your uploaded image if local
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,

//                           children: [
//                             Row(
//                               children: [
//                                 Assets.icons.likeGreenHome.image(),
//                                 const SizedBox(
//                                   width: 8,
//                                 ), // space between icon and text
//                                 const Text(
//                                   "Asif Mohammad ",
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             Row(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Assets.icons.likeWhiteIn.image(),
//                                     const SizedBox(
//                                       width: 8,
//                                     ), // space between icon and text
//                                     const Text(
//                                       "Like",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),

//                                 SizedBox(width: 20),
//                                 Row(
//                                   children: [
//                                     Assets.icons.commentBaseIcon.image(),
//                                     const SizedBox(
//                                       width: 8,
//                                     ), // space between icon and text
//                                     const Text(
//                                       "Comment ",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Container(
//                           width: 127,
//                           height: 32,
//                           padding: const EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: AppColors.primaryBackground,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: const Center(
//                             child: Text(
//                               "Sadik",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
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
    return Scrollbar(
      child: Scaffold(
        backgroundColor: AppColors.secondaryElements,
        appBar: AppBar(
          backgroundColor: AppColors.secondaryElements,
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
                icon: Assets.icons.icBaselinePlus.image(height: 30, width: 30),
                color: AppColors.primaryText,
              ),
              IconButton(
                onPressed: () {},
                icon: Assets.icons.search.image(height: 30, width: 30),
                color: AppColors.primaryText,
              ),
            ],
          ),
        ),
        body: ListView(
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
              postImage:
                  "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg",
              likedBy: "Asif Mohammad",
              actionName: "Sadik",
            ),
            const SizedBox(height: 20),
            PostWidget(
              userName: "Abdullah Al Junaid",
              location: "Naples, Italy",
              timeAgo: "1 hr",
              postText:
                  "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
              postImage:
                  "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg",
              likedBy: "Asif Mohammad",
              actionName: "Sadik",
            ),
          ],
        ),
        bottomNavigationBar: CustomNavigationBar(
          onTap: _onNavTap,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }

  Widget _buildPostInput() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 41,
        width: 353,
        decoration: BoxDecoration(
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
    );
  }
}
