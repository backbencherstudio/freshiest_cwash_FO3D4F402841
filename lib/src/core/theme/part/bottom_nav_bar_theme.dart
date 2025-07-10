import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBarTheme {
  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    //selectedItemColor: AppColor.primary,
   // unselectedItemColor: AppColor.bottomNavBarIconColor,
     selectedIconTheme: const IconThemeData(size: 28,color: AppColor.primary),
     unselectedIconTheme: const IconThemeData(size: 25,color: AppColor.bottomNavBarIconColor),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: GoogleFonts.montserrat(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primary
    ),
    unselectedLabelStyle: GoogleFonts.montserrat(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.bottomNavBarIconColor
    ),
  );


}
