import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class ServiceTypeList extends StatelessWidget {
  const ServiceTypeList({super.key});

  Widget _serviceCard({
    required String serviceName,
    required TextTheme textTheme,
    required Color color,
    Color? textColor,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: color,
        ),
        child: Column(
          children: [
            SvgPicture.asset(AppIcons.washType),
            SizedBox(height: 16.h),
            Text(
              serviceName,
              style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700,color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Services", style: textTheme.headlineSmall),
          SizedBox(height: 15.h),
          Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _serviceCard(
                textTheme: textTheme,
                serviceName: 'SPECIAL',
                color: AppColor.primary,
                textColor: Colors.white
              ),
              _serviceCard(
                textTheme: textTheme,
                serviceName: 'REGULAR',
                color: AppColor.primary.withValues(alpha: 0.55),
              ),
              _serviceCard(
                textTheme: textTheme,
                serviceName: 'MEDIUM',
                color: AppColor.primary.withValues(alpha: 0.2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
