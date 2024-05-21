import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class LiveIndicator extends StatelessWidget {
  const LiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Ao vivo",
          style: AppFonts.montserratSemiBold(12, AppColors.darkGrey),
        ),
        const SizedBox(width: 4),
        Container(
          height: 6,
          width: 6,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.red,
          ),
        ),
      ],
    );
  }
}
