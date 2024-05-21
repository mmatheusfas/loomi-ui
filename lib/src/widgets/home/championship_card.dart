import 'package:flutter/material.dart';
import 'package:loomi_ui/loomi_ui.dart';

class ChampionshipCard extends StatelessWidget {
  const ChampionshipCard({
    super.key,
    required this.imagePath,
    required this.championshipName,
  });

  final String imagePath;
  final String championshipName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.lightYellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(imagePath),
          ),
          Flexible(
            child: Text(
              championshipName,
              style: AppFonts.montserratSemiBold(12),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
