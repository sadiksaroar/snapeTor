import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
}
