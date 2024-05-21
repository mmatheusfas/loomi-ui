import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({
    super.key,
    required this.platform,
    required this.discount,
  });

  final String platform;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.lightYellow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            platform,
            style: AppFonts.montserratBold(18),
          ),
          Text(discount, style: AppFonts.montserratMedium(14)),
        ],
      ),
    );
  }
}
