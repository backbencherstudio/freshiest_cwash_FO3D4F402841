import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:go_router/go_router.dart';

Future<void> bookingConfirmationDialog({required BuildContext context}) async {
  await showDialog(
    useSafeArea: true,

    context: context,
    builder: (_) {
      final textTheme = Theme.of(context).textTheme;
      return Dialog(
        backgroundColor: Colors.transparent,
        child: IntrinsicHeight(
          child: Container(
            constraints: BoxConstraints(
              minHeight: 400.h,
              minWidth: double.infinity,
              //  maxHeight: 400.h,
              // minWidth: 365.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.8),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 15.h,
                  ),
                  child: Column(
                    spacing: 2.h,
                    children: [
                      Text(
                        "Pak De Station",
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("11/8/2025, 11:15 AM", style: textTheme.bodySmall),
                      Divider(height: 2.h),
                      SizedBox(height: 5.h),
                      richText(
                        keyName: "Username",
                        value: ":Rahmat Habsin",
                        textTheme: textTheme,
                      ),
                      richText(
                        keyName: "Phone Number",
                        value: ":081200001234",
                        textTheme: textTheme,
                      ),
                      richText(
                        keyName: "Booking ID",
                        value: ":012089",
                        textTheme: textTheme,
                      ),
                      richText(
                        keyName: "Date",
                        value: ":Sunday, 11 AUg 2025",
                        textTheme: textTheme,
                      ),
                      richText(
                        keyName: "Time",
                        value: ":03.00 - 04.00 PM",
                        textTheme: textTheme,
                      ),
                      SizedBox(height: 5.h),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Type Car",
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      richText(
                        keyName: "Pajero Sport 2019",
                        value: ":Rp. 75,000",
                        textTheme: textTheme,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Type Service",
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      richText(
                        keyName: "Special Service",
                        value: ":Rp. 30,000",
                        textTheme: textTheme,
                      ),

                      richText(
                        keyName: "Tax",
                        value: ":Rp 5,000",
                        textTheme: textTheme,
                      ),
                      richText(
                        keyName: "Voucher First Service",
                        value: ":50%",
                        textTheme: textTheme,
                      ),
                      SizedBox(height: 5.h),
                      richText(
                        keyName: "Total Price",
                        value: ":Rp. 55,000",
                        textTheme: textTheme,
                        textStyle: textTheme.headlineSmall,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        spacing: 10.w,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => context.pop(),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: AppColor.primary,
                                    width: 2.w,
                                  ),
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      "Cancel",
                                      style: textTheme.headlineSmall?.copyWith(
                                        color: AppColor.secondaryTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => context.push(RouteConst.successfulScreen),
                              child: FittedBox(child: Text("Confirm")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget richText({
  required String keyName,
  required String value,
  required TextTheme textTheme,
  TextStyle? textStyle,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 2.h),
    child: Row(
      children: [
        Expanded(
          child: Text(
            keyName,
            style:
                textStyle ??
                textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style:
                textStyle ??
                textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}
