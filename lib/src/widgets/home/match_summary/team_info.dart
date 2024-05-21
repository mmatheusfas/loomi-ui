import 'package:flutter/material.dart';

import '../../../theme/app_fonts.dart';

class TeamInfo extends StatelessWidget {
  const TeamInfo({
    super.key,
    required this.teamImagePath,
    required this.teamName,
  });

  final String teamImagePath;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          teamImagePath,
          height: 64,
          width: 64,
        ),
        const SizedBox(height: 12),
        Text(teamName, style: AppFonts.montserratMedium(12))
      ],
    );
  }
}
