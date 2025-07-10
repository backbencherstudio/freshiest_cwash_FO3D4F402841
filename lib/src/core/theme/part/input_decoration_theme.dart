import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/color_pallete.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
    filled: true,
    fillColor: AppColor.secondary,
    hintStyle: GoogleFonts.manrope(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.secondaryTextColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide(color: AppColor.borderColor),
    ),
    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(99.r)),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(99.r),
      borderSide: BorderSide.none,
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme();
}
