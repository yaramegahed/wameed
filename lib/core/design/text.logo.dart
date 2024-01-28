
import 'package:flutter/material.dart';

import 'colors.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, fontFamily: "poppins"),
      TextSpan(
        text: "Wa",
        children: [
          TextSpan(
            text: "M",
            style: TextStyle(
                fontFamily: "satisfy",
                color: AppColors.mainColor,
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
          TextSpan(text: "ee"),
          TextSpan(
            text: "d",
            style: TextStyle(
              fontFamily: "courgette",
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}


