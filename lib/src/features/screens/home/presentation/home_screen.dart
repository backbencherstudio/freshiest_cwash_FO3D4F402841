import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:freshiest_cwash_app/src/features/screens/home/presentation/widgets/home_body/home_body.dart';
import 'package:freshiest_cwash_app/src/features/screens/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
         HomeHeader(),
          Positioned.fill(
            top: 138.h,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.onPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                )
              ),
              child: HomeBody(),
            ),),

        ],
      ),
    );
  }
}
