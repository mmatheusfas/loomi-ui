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
          const Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                LinearProgressIndicator(
                  value: 0.6,
                  color: AppColors.yellow,
                ),
                Positioned(
                  top: -10,
                  left: 40,
                  child: EventTimelineIndicator(
                    eventIconPath: "assets/images/ic_yellow_card.png",
                    color: AppColors.yellow,
                    isArrowUp: false,
                  ),
                ),
                Positioned(
                  top: -15,
                  left: 80,
                  child: EventTimelineIndicator(
                    eventIconPath: "assets/images/ic_red_card.png",
                    color: AppColors.red,
                    isArrowUp: true,
                  ),
                ),
                Positioned(
                  top: -15,
                  right: 100,
                  child: EventTimelineIndicator(
                    eventIconPath: "assets/images/ic_soccer.png",
                    color: AppColors.grey,
                    isArrowUp: true,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text('90', style: AppFonts.montserratMedium(12, AppColors.darkGrey)),
        ],
      ),
    );
  }
}
