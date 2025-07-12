import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';

import 'car_drop_down_button.dart';

class SelectOrder extends StatelessWidget {
  const SelectOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Select Your Order', style: textTheme.headlineSmall),
          SizedBox(height: 16.h),
          CarDropdownButton(
            hint: "Select Your Type Car",
            items: ["BMW", "Lamborgini", "Tesla", "Odi", "XCorolla"],
            onChanged: (value) {
              debugPrint("\nSelected car : $value\n");
            },
          ),

          SizedBox(height: 16.h),
          CarDropdownButton(
            hint: "Select Your Type Car",
            items: [
              "Full Wash",
              "Glass Wash",
              "Interior Wash",
              "Super Wash",
              "Normal Wash",
            ],
            onChanged: (value) {
              debugPrint("\nSelected car : $value\n");
            },
          ),
        ],
      ),
    );
  }
}
