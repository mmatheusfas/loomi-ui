import 'package:flutter/material.dart';
import 'package:loomi_ui/src/widgets/home/user_avatar_viewer.dart';

import '../../../theme/app_colors.dart';

class DefaultBottomNavigation extends StatelessWidget {
  const DefaultBottomNavigation({
    super.key,
    required this.appLogoPath,
    this.onTapMenu,
    required this.firstBottomIconPath,
    required this.secondBottomIconPath,
    required this.thirdBottomIconPath,
    required this.userAvatarPath,
  });

  final String appLogoPath;
  final VoidCallback? onTapMenu;
  final String firstBottomIconPath;
  final String secondBottomIconPath;
  final String thirdBottomIconPath;
  final String userAvatarPath;

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
                  children: [
                    Container(
                      height: 48,
                      width: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: AppColors.yellow,
                      ),
                      child: Image.asset(firstBottomIconPath),
                    ),
                    InkWell(child: Image.asset(secondBottomIconPath, color: Colors.white)),
                    InkWell(child: Image.asset(thirdBottomIconPath, color: Colors.white))
                  ],
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
