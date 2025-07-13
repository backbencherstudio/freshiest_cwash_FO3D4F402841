import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/features/screens/profile_screens/presentation/widgets/profile_body.dart';
import 'package:freshiest_cwash_app/src/features/screens/profile_screens/presentation/widgets/profile_header.dart';
import '../../../../core/theme/theme_extension/color_pallete.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Column(
              // fit: StackFit.expand,
              children: [
                ProfileHeader(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.onPrimary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r),
                      ),
                    ),
                    child: ProfileBody(),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 155.h,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/man.png',
              width: 85.w,
              height: 85.w,
            ),
          ),
        ],
      ),
    );
  }
}
