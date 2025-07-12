import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:go_router/go_router.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppPadding.horizontalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.successfulMark,
              width: 123.w,
              height: 123.h,
            ),
            SizedBox(height: 40.h),
            Text(
              "We have received the order,please"
              " wait in line and don't forget to "
              "checkthe notification message in"
              " your account.",
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            GestureDetector(
              onTap: ()=>context.go(RouteConst.home),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 14.h),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColor.primary, width: 2.w),
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: Center(
                  child: Text(
                    "CONTINUE",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            TextButton(
              onPressed: ()=>context.pushReplacement(RouteConst.feedbackScreen),
              child: Text(
                "Feedback",
                style: textTheme.bodyLarge?.copyWith(
                  color: AppColor.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
