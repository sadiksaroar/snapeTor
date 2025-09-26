// import 'package:flutter/material.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class TravelTourCard extends StatefulWidget {
//   final String title;
//   final String imageUrl;
//   final String price;

//   const TravelTourCard({
//     super.key,
//     required this.title,
//     required this.imageUrl,
//     required this.price,
//   });

//   @override
//   _TravelTourCardState createState() => _TravelTourCardState();
// }

// class _TravelTourCardState extends State<TravelTourCard> {
//   bool isFavorited = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//       decoration: BoxDecoration(
//         color: AppColors.greyBackground,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       clipBehavior: Clip.antiAlias,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Image Section
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(16),
//                   topRight: Radius.circular(16),
//                 ),
//                 child: Image.network(
//                   widget.imageUrl,
//                   height: 148,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               // Favorite Icon
//               Positioned(
//                 top: 16,
//                 right: 16,
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isFavorited = !isFavorited;
//                     });
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 4,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       isFavorited ? Icons.favorite : Icons.favorite_border,
//                       color: isFavorited ? Colors.red : Colors.grey[600],
//                       size: 24,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           // Content Section
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // Title
//                 Text(
//                   widget.title,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                     height: 1.3,
//                   ),
//                 ),
//                 const SizedBox(height: 12),

//                 // Rating and Reviews
//                 Row(
//                   children: [
//                     const Icon(Icons.star, color: Colors.orange, size: 18),
//                     const SizedBox(width: 4),
//                     const Text(
//                       '4.8',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.orange,
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     Text(
//                       '(6,260 reviews)',
//                       style: TextStyle(fontSize: 12, color: Colors.grey[600]),
//                     ),
//                     const SizedBox(width: 12),
//                     Text(
//                       '90k+ booked',
//                       style: TextStyle(fontSize: 12, color: Colors.grey[600]),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),

//                 // Tags
//                 Row(
//                   children: [
//                     _buildTag('Bestseller', AppColors.buttonColor),
//                     const SizedBox(width: 8),
//                     _buildTag('English available', AppColors.buttonColor),
//                     const SizedBox(width: 8),
//                     _buildTag('Easy refund', AppColors.buttonColor),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // Price and Book Now
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       widget.price,
//                       style: const TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text('Booking ${widget.title}...'),
//                             backgroundColor: const Color(0xFF1E3A8A),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF1E3A8A),
//                         foregroundColor: Colors.white,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 32,
//                           vertical: 16,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         elevation: 2,
//                       ),
//                       child: const Text(
//                         'Book Now',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTag(String text, Color backgroundColor) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Text(
//         text,
//         style: const TextStyle(
//           fontSize: 12,
//           color: AppColors.backgroundWhite,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class TravelTourCard extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String price;

  const TravelTourCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  @override
  _TravelTourCardState createState() => _TravelTourCardState();
}

class _TravelTourCardState extends State<TravelTourCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section - Fixed height
          SizedBox(
            height: 148,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    height: 148,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Favorite Icon
                Positioned(
                  top: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: isFavorited ? Colors.red : Colors.grey[600],
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Content Section - Flexible
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Title - Max 2 lines
                  Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Rating and Reviews - Single line
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 18),
                        const SizedBox(width: 4),
                        const Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '(6,260 reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '90k+ booked',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Tags - Responsive wrap
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      _buildTag('Bestseller'),
                      _buildTag('English'),
                      _buildTag('Easy refund'),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Price and Book Now - Bottom aligned
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          widget.price,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Booking ${widget.title}...'),
                              backgroundColor: const Color(0xFF1E3A8A),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E3A8A),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
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

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 10,
          color: AppColors.backgroundWhite,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
