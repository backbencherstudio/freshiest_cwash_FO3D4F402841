import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/icons.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(60.r),
        child: Container(
          height: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 81.w),
          decoration: BoxDecoration(
            color: Color(0xff070707),
            borderRadius: BorderRadius.circular(60.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // children: [
            //   _buildNavItem(
            //     index: 0,
            //     icon: AppIcons.homeSolid,
            //     outlineIcon: AppIcons.homeOutlined,
            //     onTap: () => navigationShell.goBranch(0),
            //   ),
            //   _buildNavItem(
            //     index: 1,
            //     icon: AppIcons.briefcaseSolid,
            //     outlineIcon: AppIcons.briefcaseOutlined,
            //     onTap: () => navigationShell.goBranch(1),
            //   ),
            //   _buildNavItem(
            //     index: 2,
            //     icon: AppIcons.mapSolid,
            //     outlineIcon: AppIcons.mapOutlined,
            //     onTap: () => navigationShell.goBranch(2),
            //   ),
            //   _buildNavItem(
            //     index: 3,
            //     icon: AppIcons.settingSolid,
            //     outlineIcon: AppIcons.settingOutlined,
            //     onTap: () => navigationShell.goBranch(3),
            //   ),
            // ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String outlineIcon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(
          15.r,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: navigationShell.currentIndex == index
              ? Colors
                    .white
              : Colors
                    .transparent,
        ),
        child: SvgPicture.asset(
          navigationShell.currentIndex == index ? icon : outlineIcon,
        ),
      ),
    );
  }
}
