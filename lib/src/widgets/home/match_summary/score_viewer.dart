import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class ScoreViewer extends StatelessWidget {
  const ScoreViewer({
    super.key,
    required this.teamAScore,
    required this.teamBScore,
  });

  final int teamAScore;
  final int teamBScore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text((teamAScore / 10000).toStringAsFixed(0), style: AppFonts.montserratMedium(50)),
        const SizedBox(width: 8),
        Text(":", style: AppFonts.montserratMedium(40, AppColors.darkGrey)),
        const SizedBox(width: 8),
        Text((teamBScore / 10000).toStringAsFixed(0), style: AppFonts.montserratMedium(50))
      ],
    );
  }
}
