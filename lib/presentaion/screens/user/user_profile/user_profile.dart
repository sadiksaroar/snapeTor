// import 'package:flutter/material.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/presentaion/screens/home/PostWidget/post_widget.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class UserProfile extends StatefulWidget {
//   const UserProfile({super.key});

//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }

// // AppTextStyles
// class _UserProfileState extends State<UserProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundWhite,
//       body: Column(
//         children: [
//           Container(
//             height: 226,
//             width: double.infinity,
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   height: 296,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: Assets.images.userCoverPicture.image().image,
//                       // fit: BoxFit.cover,/
//                     ),
//                   ),
//                 ),
//                 // bootm add
//                 Positioned(
//                   top: 180, // starts below the background image
//                   child: Container(
//                     height: 120, // height of colored area
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.grey[100], // your background color
//                   ),
//                 ),
//                 // Back Button
//                 Positioned(
//                   top: 30,
//                   left: 16,
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: Assets.icons.backIconEditProfile.image(
//                       width: 44,
//                       height: 44,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),

//                 //   [rpfile ]
//                 Positioned(
//                   top: 115,
//                   left: 18,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Container(
//                         width: 126.75,
//                         height: 126.75,
//                         decoration: const BoxDecoration(
//                           border: Border(),
//                           color: Colors.blue,
//                           shape: BoxShape.circle,
//                         ),
//                         child: CircleAvatar(
//                           radius: 56,
//                           backgroundImage: Assets.images.profile2.image().image,
//                         ),
//                       ),
//                       // Camera Icon on Avatar
//                       Positioned(
//                         bottom: 4,
//                         right: 4,
//                         child: Container(
//                           width: 32,
//                           height: 32,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: Assets.icons.cameraEditProfile.image(
//                               width: 34,
//                               height: 35,
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   top: 130,
//                   right: 16,
//                   child: CircleAvatar(
//                     radius: 18,
//                     // backgroundColor: Colors.white,
//                     child: Assets.icons.cameraEditProfile.image(
//                       width: 34,
//                       height: 35,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 260,
//                   left: 18,
//                   child: const Text(
//                     "Abdullah Al Junaid",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 80),
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(25.0),
//             child: Expanded(
//               child: ListView(
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 children: [
//                   const SizedBox(height: 20),
//                   PostWidget(
//                     userName: "Abdullah Al Junaid",
//                     location: "Naples, Italy",
//                     timeAgo: "1 hr",
//                     postText:
//                         "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//                     postImage:
//                         "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg",
//                     likedBy: "Asif Mohammad",
//                     actionName: "Sadik",
//                   ),
//                   const SizedBox(height: 20),
//                   PostWidget(
//                     userName: "Abdullah Al Junaid",
//                     location: "Naples, Italy",
//                     timeAgo: "1 hr",
//                     postText:
//                         "Lost in the charm of Naples — where every street feels like a story waiting to be told.",
//                     postImage:
//                         "https://calflyfisher.com/wp-content/uploads/2024/09/Lead-1044x783.jpg",
//                     likedBy: "Asif Mohammad",
//                     actionName: "Sadik",
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/presentaion/screens/home/post_widget/post_widget.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: Column(
        children: [
          Container(
            height: 226,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 296,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.images.userCoverPicture.image().image,
                      fit: BoxFit.cover, // Added fit property
                    ),
                  ),
                ),
                // Bottom add
                Positioned(
                  top: 180, // starts below the background image
                  child: Container(
                    height: 120, // height of colored area
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[100], // your background color
                  ),
                ),
                // Back Button
                Positioned(
                  top: 30,
                  left: 16,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Assets.icons.backIconEditProfile.image(
                      width: 44,
                      height: 44,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // Profile Avatar
                Positioned(
                  top: 115,
                  left: 18,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 126.75,
                        height: 126.75,
                        decoration: const BoxDecoration(
                          border: Border(),
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 56,
                          backgroundImage: Assets.images.profile2.image().image,
                        ),
                      ),
                      // Camera Icon on Avatar
                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Assets.icons.cameraEditProfile.image(
                              width: 34,
                              height: 35,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Edit Cover Photo Button
                Positioned(
                  top: 130,
                  right: 16,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Assets.icons.cameraEditProfile.image(
                      width: 34,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // User Name
                Positioned(
                  top: 260,
                  left: 18,
                  child: const Text(
                    "Abdullah Al Junaid",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          // Fixed: Use Expanded directly on the container
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25.0),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                children: [
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
            ),
          ),
        ],
      ),
    );
  }
}
