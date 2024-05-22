import 'package:flutter/material.dart';

import '../../theme/app_fonts.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionName,
    this.suffixText,
    this.iconPath,
  });

  final String sectionName;
  final String? suffixText;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: iconPath != null,
          child: Image.asset(iconPath ?? '', height: 22),
        ),
        Visibility(
          visible: iconPath != null,
          child: const SizedBox(width: 4),
        ),
        Text(
          sectionName,
          style: AppFonts.montserratBold(18),
        ),
        Visibility(visible: suffixText != null, child: const Spacer()),
        Visibility(
          visible: suffixText != null,
          child: Text(suffixText ?? '', style: AppFonts.montserratBold(14)),
        ),
      ],
    );
  }
}
