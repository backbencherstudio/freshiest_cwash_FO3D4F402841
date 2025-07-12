import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:freshiest_cwash_app/src/features/screens/feedback_screen/presentation/widgets/feedback_form_card.dart';
import 'package:go_router/go_router.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Leave Reviews"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          // padding: EdgeInsets.zero,
          // padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 35),
            Padding(
              padding: AppPadding.horizontalPadding,
              child: Image.asset(
                'assets/images/car.png',
                width: 287.w,
                height: 130.h,
              ),
            ),

            SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 10.r,
                      spreadRadius: 10.r,
                      offset: Offset(2.w, 5.h),
                    ),
                  ],
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("All New Rush", style: textTheme.headlineSmall),
                            Text(
                              "SUV",
                              style: textTheme.bodyMedium?.copyWith(
                                color: Color(0xff90A3BF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StarRating(
                              rating: 5,
                              allowHalfRating: false,
                              onRatingChanged: (rating) {},
                            ),
                            Text(
                              "440+ Reviewer",
                              style: textTheme.bodySmall?.copyWith(
                                color: Color(0xff90A3BF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Divider(color: AppColor.borderColor),
                    SizedBox(height: 24.h),
                    FeedbackFormCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
