import 'package:flutter/material.dart';
import 'package:snape_tour/core/custom_assets/assets.gen.dart';

class TajmahalExample extends StatelessWidget {
  const TajmahalExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Show the Tajmahal image
        child: Assets.images.tajmahaol.image(
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
