import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class DateViewer extends StatelessWidget {
  const DateViewer({
    super.key,
    required this.isSelected,
    required this.label,
    this.fontSize,
  });

  final bool isSelected;
  final String label;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isSelected ? AppColors.black : AppColors.white,
        border: isSelected ? null : Border.all(color: AppColors.mediumGrey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: isSelected,
            child: Container(
              height: 9,
              width: 9,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightSalmon,
              ),
            ),
          ),
          Visibility(
            visible: isSelected,
            child: const SizedBox(width: 8),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppFonts.montserratSemiBold(fontSize ?? 12, isSelected ? AppColors.white : AppColors.black),
          ),
        ],
      ),
    );
  }
}
