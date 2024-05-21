import 'package:flutter/material.dart';
import 'package:loomi_ui/loomi_ui.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.imagePath,
    this.description,
    this.positionedRight,
    this.positionedTop,
  });

  final Color backgroundColor;
  final String title;
  final String imagePath;
  final String? description;
  final double? positionedRight;
  final double? positionedTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 166,
      width: 270,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              title,
              style: AppFonts.montserratBold(18),
            ),
          ),
          Visibility(
            visible: description != null,
            child: Positioned(
              top: 55,
              left: 20,
              child: Text(
                description ?? '',
                style: AppFonts.montserratMedium(14),
              ),
            ),
          ),
          Positioned(
            right: positionedRight ?? 0,
            top: positionedTop ?? -15,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          )
        ],
      ),
    );
  }
}
