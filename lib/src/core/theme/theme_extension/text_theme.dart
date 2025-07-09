import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'color_pallete.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.textColor,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.textColor,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.textColor,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.textColor,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.textColor,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.textColor,
    ),
    labelMedium: GoogleFonts.montserrat(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.textColor,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.textColor,
    ),
  );
}
