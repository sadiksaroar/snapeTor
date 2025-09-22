// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/core/routes/route_path.dart';
// import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class ChatBot extends StatefulWidget {
//   const ChatBot({super.key});

//   @override
//   State<ChatBot> createState() => _ChatBotState();
// }

// class _ChatBotState extends State<ChatBot> {
//   int _currentIndex = 1; // Move here to persist state

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
//     return Scaffold(
//       backgroundColor: AppColors.secondaryElements,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           // prevents overflow
//           child: Column(
//             children: [
//               /// Top Section - AppBar like Row
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16,
//                   vertical: 8,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: () => context.push("/createpostpage"),
//                       icon: Assets.icons.icBaselinePlus.image(
//                         height: 30,
//                         width: 30,
//                       ),
//                       color: AppColors.primaryText,
//                     ),
//                     const Text(
//                       "ChatBot",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () => context.push("/createpostpage"),
//                       icon: Assets.icons.icBaselinePlus.image(
//                         height: 30,
//                         width: 30,
//                       ),
//                       color: AppColors.primaryText,
//                     ),
//                   ],
//                 ),
//               ),

//               /// Middle Section
//               const SizedBox(height: 90),
//               Center(
//                 child: const Text(
//                   "Welcome to ChatBot",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.deepBlue,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               /// Chatbot Image
//               Assets.images.chatBotIcon.image(width: 167, height: 216),

//               const SizedBox(height: 20),

//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 32),
//                 child: Text(
//                   "Hello! I'm your tour Organizer AI. How can I assist you today?",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.deepBlue,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 100),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     // Search bar with 2 icons inside on the right
//                     Expanded(
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.deepBlue),
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search here",
//                             suffixIcon: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Icon(Icons.mic, color: AppColors.deepBlue),
//                                 const SizedBox(width: 8),
//                                 Icon(Icons.image, color: AppColors.deepBlue),
//                                 const SizedBox(
//                                   width: 8,
//                                 ), // spacing before border
//                               ],
//                             ),
//                             contentPadding: const EdgeInsets.symmetric(
//                               vertical: 15,
//                               horizontal: 16,
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     // Icon outside the container (right side)
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: AppColors.deepBlue,
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: const Icon(Icons.send, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 40),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: CustomNavigationBar(
//         onTap: _onNavTap,
//         currentIndex: _currentIndex,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  int _currentIndex = 1;

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
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    return Scaffold(
      backgroundColor: AppColors.secondaryElements,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            children: [
              /// Top Section
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => context.push("/createpostpage"),
                      icon: Assets.icons.icBaselinePlus.image(
                        height: screenHeight * 0.035,
                        width: screenHeight * 0.035,
                      ),
                      color: AppColors.primaryText,
                    ),
                    Text(
                      "ChatBot",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton(
                      onPressed: () => context.push("/createpostpage"),
                      icon: Assets.icons.icBaselinePlus.image(
                        height: screenHeight * 0.035,
                        width: screenHeight * 0.035,
                      ),
                      color: AppColors.primaryText,
                    ),
                  ],
                ),
              ),

              /// Middle Section
              SizedBox(height: screenHeight * 0.03),

              Text(
                "Welcome to ChatBot",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: AppColors.deepBlue,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              /// Chatbot Image
              SizedBox(
                height: screenHeight * 0.3,
                child: Center(
                  child: Assets.images.chatBotIcon.image(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.3,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              /// Description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                child: Text(
                  "Hello! I'm your tour Organizer AI. How can I assist you today?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w400,
                    color: AppColors.deepBlue,
                  ),
                ),
              ),

              Spacer(), // Push search bar to bottom
              /// Search & Send
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.065,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.deepBlue),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search here",
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.mic, color: AppColors.deepBlue),
                              SizedBox(width: screenWidth * 0.02),
                              Icon(Icons.image, color: AppColors.deepBlue),
                              SizedBox(width: screenWidth * 0.02),
                            ],
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.04,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Container(
                    height: screenHeight * 0.065,
                    width: screenHeight * 0.065,
                    decoration: BoxDecoration(
                      color: AppColors.deepBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: screenHeight * 0.03,
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.03),
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
}
