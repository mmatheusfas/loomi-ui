import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class LiveBetsOddsViewer extends StatelessWidget {
  const LiveBetsOddsViewer({
    super.key,
    required this.xBetImagePath,
    required this.xBetOdd,
    required this.betSafeImagePath,
    required this.betSafeOdd,
    required this.betssonImagePath,
    required this.betssonOdd,
  });

  final String xBetImagePath;
  final int xBetOdd;
  final String betSafeImagePath;
  final int betSafeOdd;
  final String betssonImagePath;
  final int betssonOdd;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text('Casa', style: AppFonts.montserratRegular(10)),
            const SizedBox(height: 4),
            Image.asset(xBetImagePath),
            const SizedBox(height: 4),
            Text(
              (xBetOdd / 10000).toStringAsFixed(1),
              style: AppFonts.montserratSemiBold(16),
            ),
          ],
        ),
        const SizedBox(
          height: 26,
          child: VerticalDivider(
            color: AppColors.lightGrey,
          ),
        ),
        Column(
          children: [
            Text('X', style: AppFonts.montserratRegular(10)),
            const SizedBox(height: 4),
            Image.asset(betSafeImagePath),
            const SizedBox(height: 4),
            Text(
              (betSafeOdd / 10000).toStringAsFixed(1),
              style: AppFonts.montserratSemiBold(16),
            ),
          ],
        ),
        const SizedBox(
          height: 26,
          child: VerticalDivider(
            color: AppColors.lightGrey,
          ),
        ),
        Column(
          children: [
            Text('Fora', style: AppFonts.montserratRegular(10)),
            const SizedBox(height: 4),
            Image.asset(betssonImagePath),
            const SizedBox(height: 4),
            Text(
              (betssonOdd / 10000).toStringAsFixed(1),
              style: AppFonts.montserratSemiBold(16),
            ),
          ],
        ),
      ],
    );
  }
}
