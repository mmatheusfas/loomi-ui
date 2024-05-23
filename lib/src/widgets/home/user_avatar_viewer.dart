import 'package:flutter/material.dart';

class UserAvatarViewer extends StatelessWidget {
  const UserAvatarViewer({
    super.key,
    required this.userAvatarPath,
    this.hasBorder,
  });

  final String userAvatarPath;
  final bool? hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: hasBorder != null ? Border.all(color: Colors.black, width: 2) : null,
        image: DecorationImage(
          image: NetworkImage(userAvatarPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
