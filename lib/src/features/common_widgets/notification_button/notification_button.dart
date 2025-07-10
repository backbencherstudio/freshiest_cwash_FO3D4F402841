import 'package:flutter/material.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        debugPrint("\nNotification Button pressed.\n");
      },
      icon: Icon(Icons.notifications, color: AppColor.onPrimary),
    );
  }
}
