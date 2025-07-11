import 'package:flutter/material.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../../core/theme/theme_extension/color_pallete.dart';
import '../../../../common_widgets/notification_button/notification_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(color: AppColor.primary),
        child: SafeArea(
          child: Padding(
            padding: AppPadding.horizontalPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Hey, Danial",
                    style: textTheme.headlineLarge?.copyWith(
                      color: AppColor.onPrimary,
                    ),
                    children: [
                      TextSpan(
                        text: "\nHope you are having a nice day!",
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColor.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                NotificationButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
