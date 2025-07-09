import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/color_pallete.dart';

class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  //Light mode Evaluated Button Theme
  static final lightEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      foregroundColor: AppColor.onPrimary,
      backgroundColor: AppColor.primary,
      textStyle: GoogleFonts.workSans(
        textStyle: TextStyle(fontSize: 24.sp),
        color: AppColor.onPrimary,
        fontWeight: FontWeight.w700,
      ),
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 22.h),
    ),
  );
}
