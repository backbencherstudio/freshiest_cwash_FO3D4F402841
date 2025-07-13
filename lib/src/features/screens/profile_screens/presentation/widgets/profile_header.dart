import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../../core/theme/theme_extension/color_pallete.dart';
import '../../../../common_widgets/notification_button/notification_button.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColor.primary),
      child: SafeArea(
        child: Container(
          height: 100.h,
          padding: AppPadding.horizontalPadding,
          child: Column(
            children: [
              Text(
                "Profile",
                style: textTheme.titleMedium?.copyWith(
                  color: AppColor.onPrimary,
                ),
              ),
              Align(alignment: Alignment.topRight, child: NotificationButton()),
            ],
          ),
        ),
      ),
    );
  }
}
