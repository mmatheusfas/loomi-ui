import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.unselectedIconPath,
    required this.selectedIconPath,
    required this.isSelected,
  });

  final String unselectedIconPath;
  final String selectedIconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        height: 48,
        width: 68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: AppColors.yellow,
        ),
        child: Image.asset(selectedIconPath),
      );
    }

    return Image.asset(unselectedIconPath, color: Colors.white);
  }
}
