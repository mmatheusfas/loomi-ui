import 'package:flutter/material.dart';
import 'package:loomi_ui/src/widgets/home/user_avatar_viewer.dart';
import 'package:loomi_ui/src/widgets/navigation/bottom_navigation/bottom_navigation_item.dart';

import '../../../theme/app_colors.dart';

class DefaultBottomNavigation extends StatelessWidget {
  const DefaultBottomNavigation({
    super.key,
    required this.appLogoPath,
    required this.firstBottomIconPath,
    required this.secondBottomIconPath,
    required this.thirdBottomIconPath,
    required this.userAvatarPath,
    required this.items,
    this.onTapMenu,
  });

  final String appLogoPath;
  final String firstBottomIconPath;
  final String secondBottomIconPath;
  final String thirdBottomIconPath;
  final String userAvatarPath;
  final List<BottomNavigationItem> items;
  final VoidCallback? onTapMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset(appLogoPath),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: onTapMenu,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: const Icon(Icons.menu, color: Colors.white),
                ),
              ),
              Container(
                height: 56,
                width: 209,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: items,
                ),
              ),
              UserAvatarViewer(userAvatarPath: userAvatarPath, hasBorder: true),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
