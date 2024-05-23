import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTapItem,
  });

  final String iconPath;
  final String label;
  final VoidCallback onTapItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapItem,
      child: Row(
        children: [
          const SizedBox(width: 12),
          Image.asset(iconPath, color: AppColors.black, height: 16, width: 16),
          const SizedBox(width: 12),
          Text(label, style: AppFonts.montserratMedium(16)),
        ],
      ),
    );
  }
}
