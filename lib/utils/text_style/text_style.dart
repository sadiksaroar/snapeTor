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
  static TextStyle interMedium18 = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500, // 500 → Medium
    fontStyle: FontStyle.normal,
    height: 1.0, // line-height 100% → 1.0
    letterSpacing: 0.0, // 0%
    color: AppColors.primaryText,
  );
  static const TextStyle interBold24 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 10 / 24, // line-height ÷ font-size
    letterSpacing: 0,
    color: AppColors.lightGray, // change if needed
  );
  static const TextStyle mediumText = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500, // 500 = Medium
    fontSize: 18,
    height: 23 / 18, // line-height ÷ font-size
    letterSpacing: 0,
    color: AppColors.lightGray, // change if needed
    // textAlign is set in the Text widget, not TextStyle
  );
  static const TextStyle medium18Center = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    height: 26 / 18, // line-height / font-size
    letterSpacing: 0,
    color: Color(0xFF1D1B20),
  );
}
