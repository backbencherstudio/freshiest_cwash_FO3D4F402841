import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class FeedbackFormCard extends StatelessWidget {
  const FeedbackFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "How is your Car Wash Experience",
          style: textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Text("Your Overall rating"),
        SizedBox(height: 16.h),
        StarRating(rating: 4,size: 40.sp,),
      // Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Add detailed review"),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
              hintText: "Placeholder",
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColor.borderColor),
            ),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColor.primary),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Save"))),
      ],
    );
  }
}
