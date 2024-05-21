import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class TextButtonRow extends StatelessWidget {
  const TextButtonRow({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: AppFonts.montserratBold(14, AppColors.darkGrey),
        ),
        const SizedBox(width: 12),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(64, 46),
            maximumSize: const Size(64, 46),
          ),
          child: const Icon(
            Icons.arrow_forward,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
