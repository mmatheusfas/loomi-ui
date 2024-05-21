import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class EventTimelineIndicator extends StatelessWidget {
  const EventTimelineIndicator({
    super.key,
    required this.eventIconPath,
    required this.color,
    required this.isArrowUp,
  });

  final String eventIconPath;
  final Color color;
  final bool isArrowUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: isArrowUp,
          child: Image.asset(
            "assets/images/ic_arrow_up.png",
            fit: BoxFit.cover,
            color: color,
          ),
        ),
        Container(
          height: 26,
          width: 26,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.grey),
            shape: BoxShape.circle,
          ),
          child: Image.asset(eventIconPath, color: color),
        ),
        Visibility(
          visible: !isArrowUp,
          child: Image.asset(
            "assets/images/ic_arrow_down.png",
            fit: BoxFit.cover,
            color: color,
          ),
        ),
      ],
    );
  }
}
