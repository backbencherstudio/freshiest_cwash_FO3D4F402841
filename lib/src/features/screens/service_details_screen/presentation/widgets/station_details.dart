import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class StationDetails extends StatelessWidget {
  const StationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pak De Station", style: textTheme.headlineSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        "Tampan, Pekanbaru",
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColor.secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  spacing: 5.w,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text("5.0",style: textTheme.bodySmall?.copyWith(color: AppColor.onPrimary),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 21.h),
          Text("Description", style: textTheme.headlineSmall),
          SizedBox(height: 15.h),
          Text(
            "We Work Dedicately towards spreading the "
            "awarenes among cras user about their car "
            "hygiene habits, cleanlines, durability of exterior look and "
            "other common cleaning tips.",
            style: textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
