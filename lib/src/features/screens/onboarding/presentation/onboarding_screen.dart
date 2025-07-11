import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_app/src/core/constant/images.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontalPadding,
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(AppIcons.nameLogo),
              Spacer(),
              Image.asset(AppImages.carImage, width: 286.w, height: 228.h),
              Spacer(),
              Text(
                "Find Your\nBest Car Wash!",
                style: textTheme.headlineLarge?.copyWith(
                  fontSize: 40.sp,
                  color: AppColor.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(AppIcons.dividerPng, width: 150.w),
              SizedBox(height: 7.h),
              Text(
                "An app that helps you find Car Wash to\nyour Requirement.",
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColor.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColor.textColor,
                  ),
                  onPressed: () => context.go(RouteConst.home),
                  child: Text("Get Started", style: textTheme.titleMedium),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
