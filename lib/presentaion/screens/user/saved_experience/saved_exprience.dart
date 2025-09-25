// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class SavedExprience extends StatefulWidget {
//   const SavedExprience({super.key});

//   @override
//   State<SavedExprience> createState() => _SavedExprienceState();
// }

// class _SavedExprienceState extends State<SavedExprience> {
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> tours = [
//       {
//         "user": "Helena",
//         "avatar": Assets.images.helena.image(
//           height: 20,
//           width: 20,
//           fit: BoxFit.cover,
//         ),
//         "image": Assets.images.tajmohl.image(
//           height: 200,
//           width: 300,
//           fit: BoxFit.cover,
//         ),
//         "title": "Pompeii & Vesuvius Day Tour from Naples.....",
//         "price": 150,
//       },
//       {
//         "user": "Oscar",
//         "avatar": Assets.images.helena.image(
//           height: 20,
//           width: 20,
//           fit: BoxFit.cover,
//         ),
//         "image": Assets.images.tajmohl.image(
//           height: 200,
//           width: 300,
//           fit: BoxFit.cover,
//         ),
//         "title": "Pompeii & Vesuvius Day Tour from Naples.....",
//         "price": 150,
//       },
//       {
//         "user": "Daniel",
//         "avatar": Assets.images.helena.image(
//           height: 20,
//           width: 20,
//           fit: BoxFit.cover,
//         ),
//         "image": Assets.images.tajmohl.image(
//           height: 200,
//           width: 300,
//           fit: BoxFit.cover,
//         ),
//         "title": "Pompeii & Vesuvius Day Tour from Naples.....",
//         "price": 150,
//       },
//       {
//         "user": "Oscar",
//         "avatar": Assets.images.helena.image(
//           height: 20,
//           width: 20,
//           fit: BoxFit.cover,
//         ),
//         "image": Assets.images.tajmohl.image(
//           height: 200,
//           width: 300,
//           fit: BoxFit.cover,
//         ),
//         "title": "Pompeii & Vesuvius Day Tour from Naples.....",
//         "price": 150,
//       },
//     ];
//     return Scaffold(
//       backgroundColor: AppColors.backgroundWhite,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: AppColors.backgroundWhite,
//         leading: IconButton(
//           onPressed: () {
//             context.pop();
//           },
//           icon: Assets.icons.backIconEditProfile.image(height: 44, width: 44),
//           color: AppColors.primaryText,
//         ),
//         centerTitle: true,
//         title: const Text(
//           "Saved Experience",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // 2 cards per row
//             crossAxisSpacing: 12,
//             mainAxisSpacing: 12,
//             childAspectRatio: 0.75,
//           ),
//           itemCount: tours.length,
//           itemBuilder: (context, index) {
//             final tour = tours[index];
//             return _buildTourCard(tour);
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildTourCard(Map<String, dynamic> tour) {
//     return Container(
//       decoration: BoxDecoration(color: AppColors.secondaryElements),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadiusGeometry.vertical(
//               top: Radius.circular(16),
//             ),
//             child: Image.asset(
//               tour["image"],
//               height: 149,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             top: 8,
//             left: 8,
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   radius: 14,
//                   backgroundImage: NetworkImage(tour["avatar"]),
//                 ),
//                 const SizedBox(width: 6),
//                 Text(
//                   tour["user"],
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     shadows: [Shadow(blurRadius: 4, color: Colors.black54)],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Title
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               tour["title"],
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black87,
//               ),
//             ),
//           ),

//           // Price with red icon
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 const Icon(
//                   Icons.fiber_manual_record,
//                   size: 16,
//                   color: Colors.red,
//                 ),
//                 const SizedBox(width: 4),
//                 Text(
//                   "${tour["price"]}",
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SavedExperience extends StatefulWidget {
  const SavedExperience({super.key});

  @override
  State<SavedExperience> createState() => _SavedExperienceState();
}

class _SavedExperienceState extends State<SavedExperience> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tours = [
      {
        "user": "Helena",
        "avatar": Assets.images.helena.image(
          height: 28,
          width: 28,
          fit: BoxFit.cover,
        ),
        "image": Assets.images.tajmohl.image(
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
      {
        "user": "Oscar",
        "avatar": Assets.images.helena.image(
          height: 28,
          width: 28,
          fit: BoxFit.cover,
        ),
        "image": Assets.images.tajmohl.image(
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
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
          "Saved Experience",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 cards per row
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemCount: tours.length,
          itemBuilder: (context, index) {
            final tour = tours[index];
            return _buildTourCard(tour);
          },
        ),
      ),
    );
  }

  Widget _buildTourCard(Map<String, dynamic> tour) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.secondaryElements,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image stack
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: tour["image"],
          ),
          // Expanded for text & price
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    tour["title"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  // Price row
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 16,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "\$${tour["price"]}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
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
