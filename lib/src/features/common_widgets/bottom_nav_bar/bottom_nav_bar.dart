import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/icons.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          debugPrint("\n Pressed Center button \n");
        },
        child: Container(
          width: 52.w,
          height: 52.w,
          padding: EdgeInsets.all(14.r),
          decoration: BoxDecoration(
            color: AppColor.primary,
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.onPrimary, width: 4.w),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons.car,
              colorFilter: ColorFilter.mode(
                AppColor.onPrimary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(index),
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        backgroundColor: AppColor.onPrimary,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.home,
              colorFilter: ColorFilter.mode(
                navigationShell.currentIndex == 0
                    ? AppColor.primary
                    : AppColor.bottomNavBarIconColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.search,
              colorFilter: ColorFilter.mode(
                navigationShell.currentIndex == 1
                    ? AppColor.primary
                    : AppColor.bottomNavBarIconColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.history,
              colorFilter: ColorFilter.mode(
                navigationShell.currentIndex == 2
                    ? AppColor.primary
                    : AppColor.bottomNavBarIconColor,
                BlendMode.srcIn,
              ),
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.user,
              colorFilter: ColorFilter.mode(
                navigationShell.currentIndex == 3
                    ? AppColor.primary
                    : AppColor.bottomNavBarIconColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
