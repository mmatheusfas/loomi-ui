import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    super.key,
    required this.onTap,
    required this.iconPath,
  });

  final VoidCallback onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 32,
        width: 32,
        decoration: const BoxDecoration(
          color: AppColors.yellow,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            iconPath,
            height: 12,
          ),
        ),
      ),
    );
  }
}
