import 'package:flutter/material.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

import '../../../common_widgets/notification_button/notification_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(color: AppColor.primary),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Hey, Danial",
                      style: textTheme.headlineLarge,
                      children: [
                        TextSpan(
                          text: "\nHope you are having a nice day!",
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  NotificationButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
