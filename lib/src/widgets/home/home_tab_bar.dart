import 'package:flutter/material.dart';

class HomeTabBar extends TabBar {
  HomeTabBar({super.key, required List<Widget> tabItems})
      : super(
          indicatorColor: Colors.black,
          indicatorPadding: const EdgeInsets.only(top: 12, right: 12, left: 12),
          dividerColor: Colors.grey[400],
          indicatorWeight: 4,
          labelPadding: const EdgeInsets.all(4),
          labelColor: Colors.black,
          tabs: tabItems,
        );
}
