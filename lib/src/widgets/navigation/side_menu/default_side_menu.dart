import 'package:flutter/material.dart';
import 'package:loomi_ui/src/theme/app_colors.dart';
import 'package:loomi_ui/src/widgets/navigation/side_menu/top_section_button.dart';

class DefaultSideMenu extends StatelessWidget {
  const DefaultSideMenu({
    super.key,
    required this.middleSectionMenuItems,
    required this.bottomSectionMenuItems,
    required this.topSectionIconPath,
    required this.topSectionLabel,
  });

  final List<Widget> middleSectionMenuItems;
  final List<Widget> bottomSectionMenuItems;
  final String topSectionIconPath;
  final String topSectionLabel;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const TopSectionButton(suffixIcon: Icon(Icons.search)),
                const SizedBox(width: 12),
                TopSectionButton(
                  suffixIcon: Image.asset(topSectionIconPath, color: AppColors.black),
                  label: topSectionLabel,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(height: 0.5),
            const SizedBox(height: 40),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: middleSectionMenuItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: middleSectionMenuItems[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const Divider(height: 0.5),
            const SizedBox(height: 40),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: bottomSectionMenuItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: bottomSectionMenuItems[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const Divider(height: 0.5),
          ],
        ),
      ),
    );
  }
}
