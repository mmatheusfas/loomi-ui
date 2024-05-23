import 'package:flutter/material.dart';
import 'package:loomi_ui/loomi_ui.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/event_timeline_indicator.dart';

class LiveTimelineViewer extends StatelessWidget {
  const LiveTimelineViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(
        children: [
          Text('0', style: AppFonts.montserratMedium(12, AppColors.darkGrey)),
          const SizedBox(width: 8),
          Expanded(
            child: LayoutBuilder(builder: (_, constraints) {
              final double progressWidth = constraints.maxWidth * 0.3;

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  const LinearProgressIndicator(
                    value: 0.6,
                    color: AppColors.yellow,
                  ),
                  Positioned(
                    top: -10,
                    left: progressWidth - 40,
                    child: const EventTimelineIndicator(
                      eventIconPath: "assets/images/ic_yellow_card.png",
                      color: AppColors.yellow,
                      isArrowUp: false,
                    ),
                  ),
                  Positioned(
                    top: -15,
                    left: progressWidth - 2,
                    child: const EventTimelineIndicator(
                      eventIconPath: "assets/images/ic_red_card.png",
                      color: AppColors.red,
                      isArrowUp: true,
                    ),
                  ),
                  Positioned(
                    top: -15,
                    right: progressWidth,
                    child: const EventTimelineIndicator(
                      eventIconPath: "assets/images/ic_soccer.png",
                      color: AppColors.grey,
                      isArrowUp: true,
                    ),
                  ),
                ],
              );
            }),
          ),
          const SizedBox(width: 8),
          Text('90', style: AppFonts.montserratMedium(12, AppColors.darkGrey)),
        ],
      ),
    );
  }
}
