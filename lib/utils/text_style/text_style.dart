import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class AppTextStyles {
  // ✅ Primary Text Font -> Nunito Sans
  static TextStyle primaryText = GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black, // you can replace with your custom color
  );

  // ✅ Secondary Text Font -> Inter
  static TextStyle secondaryText = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey[800],
  );

  // Example variations
  static TextStyle heading = GoogleFonts.nunitoSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle subtitle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey[700],
  );
  static const TextStyle bold20Center = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w700, // Bold
    fontStyle: FontStyle.normal,
    fontSize: 20,
    height: 0.5, // line-height / font-size => 10 / 20
    letterSpacing: 0,
  );

  static const TextStyle inter14Center = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500, // 500 corresponds to Medium
    fontStyle: FontStyle.normal, // Medium weight is handled by fontWeight
    fontSize: 14,
    height: 26 / 14, // line-height divided by font-size => 26 / 14 ≈ 1.857
    letterSpacing: 0,
    color: AppColors.grey,
  );
  static const TextStyle nunito16BoldCenter = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w700, // Bold
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 26 / 16, // line-height divided by font-size => 1.625
    letterSpacing: 0,
    color: AppColors.primaryText,
  );
}
