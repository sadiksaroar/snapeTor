import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class TourCardPage extends StatelessWidget {
  const TourCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tours = [
      {
        "user": "Helena",
        "avatar": "https://i.pravatar.cc/150?img=5",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Ensemble_Shakhi_Zinda_%288%29.JPG/800px-Ensemble_Shakhi_Zinda_%288%29.JPG",
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
      {
        "user": "Oscar",
        "avatar": "https://i.pravatar.cc/150?img=6",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Ensemble_Shakhi_Zinda_%288%29.JPG/800px-Ensemble_Shakhi_Zinda_%288%29.JPG",
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
      {
        "user": "Daniel",
        "avatar": "https://i.pravatar.cc/150?img=7",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Ensemble_Shakhi_Zinda_%288%29.JPG/800px-Ensemble_Shakhi_Zinda_%288%29.JPG",
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
      {
        "user": "Oscar",
        "avatar": "https://i.pravatar.cc/150?img=8",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Ensemble_Shakhi_Zinda_%288%29.JPG/800px-Ensemble_Shakhi_Zinda_%288%29.JPG",
        "title": "Pompeii & Vesuvius Day Tour from Naples.....",
        "price": 150,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundWhite,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Assets.icons.backIconEditProfile.image(height: 44, width: 44),
          color: AppColors.primaryText,
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
      backgroundColor: AppColors.backgroundWhite,
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
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with avatar and name on top
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.network(
                  tour["image"],
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(tour["avatar"]),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      tour["user"],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        shadows: [Shadow(blurRadius: 4, color: Colors.black54)],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              tour["title"],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),

          // Price with red icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite, // love/heart icon
                  size: 16,
                  color: Colors.red,
                ),
                const SizedBox(width: 4),
                Text(
                  "${tour["price"]}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
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
