// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:snape_tour/core/custom_assets/assets.gen.dart';
// import 'package:snape_tour/core/routes/route_path.dart';
// import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class ChatBootDemo extends StatefulWidget {
//   const ChatBootDemo({super.key});

//   @override
//   State<ChatBootDemo> createState() => _ChatBootDemoState();
// }

// class _ChatBootDemoState extends State<ChatBootDemo> {
//   int _currentIndex = 1;
//   final TextEditingController _controller = TextEditingController();

//   final List<Map<String, dynamic>> _messages = [
//     {
//       "text":
//           "Hi! Can you help me find some activities to do in Naples, Italy?",
//       "isUser": true,
//     },
//     {
//       "text":
//           "Sure! Let me find some exciting activities for you in Naples. Here are a few options:\n\n1. Visit Pompeii\n2. Explore Amalfi Coast\n3. Enjoy authentic Neapolitan pizza",
//       "isUser": false,
//     },
//     {"text": "Can you find a hiking tour near me?", "isUser": true},
//   ];

//   void _sendMessage() {
//     if (_controller.text.trim().isEmpty) return;
//     setState(() {
//       _messages.add({"text": _controller.text.trim(), "isUser": true});
//       _controller.clear();
//     });
//   }

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
//     final size = MediaQuery.of(context).size;
//     final screenWidth = size.width;
//     final screenHeight = size.height;

//     return Scaffold(
//       backgroundColor: AppColors.secondaryElements,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
//           child: Column(
//             children: [
//               /// Top Section
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Assets.icons.barChart2.image(
//                         height: screenHeight * 0.035,
//                         width: screenHeight * 0.035,
//                       ),
//                       color: AppColors.primaryText,
//                     ),
//                     Text(
//                       "ChatBot",
//                       style: TextStyle(
//                         fontSize: screenWidth * 0.045,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Assets.icons.chatbotEdit.image(
//                         height: 16,
//                         width: 16,
//                       ),
//                       color: AppColors.primaryText,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 200),

//               /// Chat List
//               Expanded(
//                 child: ListView.builder(
//                   padding: const EdgeInsets.all(12),
//                   itemCount: _messages.length,
//                   itemBuilder: (context, index) {
//                     final message = _messages[index];
//                     final isUser = message["isUser"] as bool;
//                     return Align(
//                       alignment: isUser
//                           ? Alignment.centerRight
//                           : Alignment.centerLeft,
//                       child: Container(
//                         padding: const EdgeInsets.all(12),
//                         margin: const EdgeInsets.only(bottom: 8),
//                         decoration: BoxDecoration(
//                           color: isUser
//                               ? const Color(0xFF003366)
//                               : Colors.grey.shade200,
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Text(
//                           message["text"],
//                           style: TextStyle(
//                             color: isUser ? Colors.white : Colors.black87,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               /// Input Section
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: screenHeight * 0.065,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.deepBlue),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: TextField(
//                         controller: _controller,
//                         decoration: InputDecoration(
//                           hintText: "Type your message...",
//                           suffixIcon: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(Icons.mic, color: AppColors.deepBlue),
//                               SizedBox(width: screenWidth * 0.02),
//                               Icon(Icons.image, color: AppColors.deepBlue),
//                               SizedBox(width: screenWidth * 0.02),
//                             ],
//                           ),
//                           contentPadding: EdgeInsets.symmetric(
//                             vertical: screenHeight * 0.015,
//                             horizontal: screenWidth * 0.04,
//                           ),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: screenWidth * 0.03),
//                   GestureDetector(
//                     onTap: _sendMessage,
//                     child: Container(
//                       height: screenHeight * 0.065,
//                       width: screenHeight * 0.065,
//                       decoration: BoxDecoration(
//                         color: AppColors.deepBlue,
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Icon(
//                         Icons.send,
//                         color: Colors.white,
//                         size: screenHeight * 0.03,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               SizedBox(height: screenHeight * 0.03),
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
import 'package:snape_tour/utils/text_style/text_style.dart';

class ChatBootDemo extends StatefulWidget {
  const ChatBootDemo({super.key});

  @override
  State<ChatBootDemo> createState() => _ChatBootDemoState();
}

class _ChatBootDemoState extends State<ChatBootDemo> {
  int _currentIndex = 1;
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      "text":
          "Hi! Can you help me find some activities to do in Naples, Italy?",
      "isUser": true,
    },
    {
      "text":
          "Sure! Let me find some exciting activities for you in Naples. Here are a few options:\n\n1. Visit Pompeii\n2. Explore Amalfi Coast\n3. Enjoy authentic Neapolitan pizza",
      "isUser": false,
    },
    {"text": "Can you find a hiking tour near me?", "isUser": true},
  ];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _messages.add({"text": _controller.text.trim(), "isUser": true});
      _controller.clear();
    });
  }

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
                      onPressed: () {},
                      icon: Assets.icons.barChart2.image(
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
                      onPressed: () {},
                      icon: Assets.icons.chatbotEdit.image(
                        height: 16,
                        width: 16,
                      ),
                      color: AppColors.primaryText,
                    ),
                  ],
                ),
              ),

              /// Chat Messages (NO scroll, just static column)
              SizedBox(height: 10),
              Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _messages.map((message) {
                      final isUser = message["isUser"] as bool;
                      return Align(
                        alignment: isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: isUser
                                ? const Color(0xFF003366)
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            message["text"],
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              /// Input Section
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
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: "Type your Promot here.......  ",
                          hintStyle: AppTextStyles.interStyle,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.icons.group.image(height: 24, width: 24),
                              SizedBox(width: screenWidth * 0.02),
                              Assets.icons.micChatBoot.image(
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                            ],
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.015,
                            horizontal: screenWidth * 0.04,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  GestureDetector(
                    onTap: _sendMessage,
                    child: Container(
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
