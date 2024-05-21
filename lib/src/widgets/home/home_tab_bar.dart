import 'package:flutter/material.dart';
import 'package:loomi_ui/src/widgets/home/tab_bar_item.dart';

class HomeTabBar extends TabBar {
  HomeTabBar({super.key})
      : super(
          indicatorColor: Colors.black,
          indicatorPadding: const EdgeInsets.only(top: 12, right: 12, left: 12),
          dividerColor: Colors.grey[400],
          indicatorWeight: 4,
          labelPadding: const EdgeInsets.all(4),
          labelColor: Colors.black,
          tabs: [
            const TabBarItem(
              imagePath: "assets/images/ic_whistle.png",
              label: "Todos",
            ),
            const TabBarItem(
              imagePath: "assets/images/ic_soccer.png",
              label: "Futebol",
            ),
            const TabBarItem(
              imagePath: "assets/images/ic_basketball.png",
              label: "Basquete",
            ),
            const TabBarItem(
              imagePath: "assets/images/ic_esports.png",
              label: "E-Sports",
            ),
          ],
        );
}
