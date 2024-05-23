import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class TopSectionButton extends StatelessWidget {
  const TopSectionButton({
    super.key,
    required this.suffixIcon,
    this.label,
  });

  final Widget suffixIcon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(label != null ? 24 : 100),
        boxShadow: const [
          BoxShadow(
            color: AppColors.black02,
            blurRadius: 5,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Row(
        children: [
          suffixIcon,
          Visibility(visible: label != null, child: const SizedBox(width: 8)),
          Visibility(
            visible: label != null,
            child: Text(label ?? '', style: AppFonts.montserratSemiBold(12)),
          ),
        ],
      ),
    );
  }
}
