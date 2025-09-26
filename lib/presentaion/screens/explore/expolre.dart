import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/main.dart';
import 'package:snape_tour/presentaion/screens/explore/favorites/favprites.dart';
import 'package:snape_tour/presentaion/widgets/custom_navbar/custom_navbar.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class Expolre extends StatefulWidget {
  const Expolre({super.key});

  @override
  State<Expolre> createState() => _ExpolreState();
}

class _ExpolreState extends State<Expolre> with SingleTickerProviderStateMixin {
  int _currentIndex = 2;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: Column(
        children: [
          SizedBox(
            height: 318,
            child: Stack(
              children: [
                Assets.images.aiplaceBackground.image(),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Assets.icons.backIconEditProfile.image(
                          height: 44,
                          width: 44,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 232,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Travel Spots That Match \n Your Vibe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Custom TabBar
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: const Color(0xFF1E3A8A), // Dark blue color
                borderRadius: BorderRadius.circular(25),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[600],
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              tabs: const [
                Tab(
                  child: SizedBox(
                    height: 45,
                    child: Center(child: Text('Recommended')),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 45,
                    child: Center(child: Text('Favorites')),
                  ),
                ),
              ],
            ),
          ),

          // Expanded TabBarView with proper constraints
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Recommended Tab - ListView for scrollable content
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 400, // Fixed height for each card
                      child: TravelTourCard(
                        title: 'Amalfi Coast Scenic Drive Day Tour',
                        imageUrl: 'https://picsum.photos/800/600?1',
                        price: 'US \$ 64.55',
                      ),
                    ),
                    SizedBox(
                      height: 400, // Fixed height for each card
                      child: TravelTourCard(
                        title: 'Rome City Highlights Guided Tour',
                        imageUrl: 'https://picsum.photos/800/600?2',
                        price: 'US \$ 80.00',
                      ),
                    ),
                    SizedBox(
                      height: 400, // Fixed height for each card
                      child: TravelTourCard(
                        title: 'Venice Gondola Experience',
                        imageUrl: 'https://picsum.photos/800/600?3',
                        price: 'US \$ 45.00',
                      ),
                    ),
                  ],
                ),

                // Favorites Tab - You can replace this with your Favorites widget
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 400, // Fixed height for each card
                      child: TravelTourCard(
                        title: 'Florence Art & Culture Tour',
                        imageUrl: 'https://picsum.photos/800/600?4',
                        price: 'US \$ 95.00',
                      ),
                    ),
                    SizedBox(
                      height: 400, // Fixed height for each card
                      child: TravelTourCard(
                        title: 'Tuscany Wine Tasting Experience',
                        imageUrl: 'https://picsum.photos/800/600?5',
                        price: 'US \$ 120.00',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(height: 100),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: _onNavTap,
        currentIndex: _currentIndex,
      ),
    );
  }
}
