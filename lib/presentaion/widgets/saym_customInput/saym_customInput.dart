// import 'package:flutter/material.dart';
// import 'package:snape_tour/utils/app_colors/app_colors.dart';

// class SaymCustomInput extends StatelessWidget {
//   final String hint;
//   final String label;
//   final IconData? icon; // Optional icon
//   final bool obscureText; // Optional, default false
//   final TextEditingController? controller;

//   const SaymCustomInput({
//     super.key,
//     required this.hint,
//     required this.label,
//     this.icon,
//     this.obscureText = false,
//     this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       obscureText: obscureText,
//       style: const TextStyle(color: Colors.white),
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: const TextStyle(color: Colors.white),
//         hintText: hint,
//         hintStyle: const TextStyle(color: Colors.white70),
//         prefixIcon: icon != null ? Icon(icon, color: Colors.white70) : null,
//         filled: true,
//         fillColor: AppColors.primaryBackground,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.transparent),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:snape_tour/utils/app_colors/app_colors.dart';

class SaymCustomInput extends StatelessWidget {
  final String hint;
  final String label;
  final IconData? icon; // Optional icon
  final bool obscureText; // Optional, default false
  final TextEditingController? controller;

  const SaymCustomInput({
    super.key,
    required this.hint,
    required this.label,
    this.icon,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white70),
        // Place the icon on the right side
        suffixIcon: icon != null ? Icon(icon, color: Colors.white70) : null,
        filled: true,
        fillColor: AppColors.primaryBackground,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
