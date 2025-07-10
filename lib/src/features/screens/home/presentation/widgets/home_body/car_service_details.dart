import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/images.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class CarServiceDetails extends StatelessWidget {
  const CarServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 14.h,
          children: [
            Row(
              spacing: 10.w,
              children: [
                ClipOval(
                  child: Image.asset(
                    AppImages.carService,
                    width: 44.w,
                    height: 44.w,
                  ),
                ),
                Column(
                  spacing: 3.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Car Wash",
                      style: textTheme.bodyLarge?.copyWith(
                        color: AppColor.onPrimary,
                      ),
                    ),
                    Row(
                      spacing: 4.w,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          "4.5",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColor.onPrimary,
                          ),
                        ),
                        Text(
                          "( 98 reviews)",
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.bookmark_border,
                  color: AppColor.onPrimary,
                  size: 22.sp,
                ),
              ],
            ),
            Text(
              "Available today:",
              style: textTheme.bodyLarge?.copyWith(color: AppColor.onPrimary),
            ),
            Row(
              spacing: 6.w,
              children: [
                timeButton(text: "10:00", textTheme: textTheme),
                timeButton(text: "11:00", textTheme: textTheme),
                timeButton(text: "13:00", textTheme: textTheme),
                Text(
                  "+2 more",
                  style: textTheme.bodySmall?.copyWith(
                    color: AppColor.onPrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Row(
              spacing: 4.w,
              children: [
                Icon(Icons.location_on_outlined, color: AppColor.onPrimary),
                Text(
                  "Sydney, Australia",
                  style: textTheme.bodyMedium?.copyWith(
                    color: AppColor.onPrimary,
                  ),
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                    text: '\$27.99/',
                    style: textTheme.headlineLarge?.copyWith(
                      color: AppColor.onPrimary,
                    ),
                    children: [
                      TextSpan(
                        text: 'wash',
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColor.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget timeButton({required String text, required TextTheme textTheme}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
    decoration: BoxDecoration(
      color: AppColor.onPrimary,
      borderRadius: BorderRadius.circular(5.r),
    ),
    child: Text(
      text,
      style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
    ),
  );
}
