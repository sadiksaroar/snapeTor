// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';
// import 'package:snape_tour/utils/text_style/text_style.dart';

// class CheackIn extends StatefulWidget {
//   const CheackIn({super.key});

//   @override
//   State<CheackIn> createState() => _CheackInState();
// }

// class _CheackInState extends State<CheackIn> {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             context.pop(); // just pop back, no need for a route here
//           },
//           icon: Assets.icons.croossIcon.image(height: 30, width: 30),
//           color: AppColors.primaryText,
//         ),
//         centerTitle: true,
//         title: const Text(
//           "Create post",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//       ),

//       backgroundColor: AppColors.backgroundWhite,

//       // ✅ Body placeholder
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x0F0D0A2C), // #0D0A2C0F
//                     blurRadius: 12,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search here",
//                   prefixIcon: const Icon(Icons.search), // 👈 ডান পাশে গেলো
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.04),

//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Top illustration
//                 Center(
//                   child: Assets.images.worldHomeCheckIn.image(
//                     height: 120,
//                     width: 120,
//                     fit: BoxFit.contain,
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Title
//                 const Text(
//                   "Find places near you",
//                   style: AppTextStyles.interBold24,
//                 ),
//                 SizedBox(height: 20),
//                 Center(
//                   child: Text(
//                     "To see places near you, or to check in toa specific location, turn on Location Services.",
//                     style: AppTextStyles.mediumText,
//                   ),
//                 ),
//                 SizedBox(height: 15),
//                 GestureDetector(
//                   onTap: () {
//                     // Your onPressed code here
//                   },
//                   child: Container(
//                     width: 107,
//                     height: 44,
//                     decoration: BoxDecoration(
//                       color: AppColors.secondaryText, // background color
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         "Turn on",
//                         style: TextStyle(
//                           color: Colors.white, // text color
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.separated(
//                     itemCount: 4,
//                     separatorBuilder: (_, __) =>
//                         const Divider(thickness: 1, height: 0),
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         leading: const Icon(
//                           Icons.location_on_outlined,
//                           color: Colors.grey,
//                         ),
//                         title: const Text("Milan city twon, Italy"),
//                         onTap: () {},
//                       );
//                     },
//                   ),
//                 ),
//               ],
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
import 'package:snape_tour/utils/app_colors/app_colors.dart';
import 'package:snape_tour/utils/text_style/text_style.dart';

class CheackIn extends StatefulWidget {
  const CheackIn({super.key});

  @override
  State<CheackIn> createState() => _CheackInState();
}

class _CheackInState extends State<CheackIn> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.pop(); // just pop back
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
      ),
      backgroundColor: AppColors.backgroundWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Search Box
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0F0D0A2C),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),

            // Illustration
            Assets.images.worldHomeCheckIn.image(
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),

            // Title
            const Text(
              "Find places near you",
              style: AppTextStyles.interBold24,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Description
            Text(
              "To see places near you, or to check in to a specific location, turn on Location Services.",
              style: AppTextStyles.mediumText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),

            // Turn On Button
            GestureDetector(
              onTap: () {
                // Your onPressed code here
              },
              child: Container(
                width: 107,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColors.secondaryText,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Turn on",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Divider(thickness: 1, height: 0),

            // List of Locations
            Column(
              children: List.generate(4, (index) {
                return Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      title: const Text(
                        "Milan city town, Italy",
                        style: AppTextStyles.medium18Center,
                      ),
                      onTap: () {},
                    ),
                    const Divider(thickness: 1, height: 0),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
