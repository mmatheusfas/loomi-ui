import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class WonBetCard extends StatelessWidget {
  const WonBetCard({
    super.key,
    required this.userAvatarPath,
    required this.userName,
    required this.platform,
    required this.score,
  });

  final String userAvatarPath;
  final String userName;
  final String platform;
  final double score;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(color: AppColors.lightGrey, blurRadius: 5),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(userAvatarPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(userName, style: AppFonts.montserratMedium(14)),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(platform, style: AppFonts.montserratMedium(14)),
              Text((score / 10000).toStringAsFixed(2), style: AppFonts.montserratBold(16)),
            ],
          ),
        ],
      ),
    );
  }
}
