import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:go_router/go_router.dart';

class ServiceCoverPhoto extends StatelessWidget{
  const ServiceCoverPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: double.infinity,
      height: 292.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
              child: Image.asset(
                'assets/images/car_wash.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 0,
            child: Padding(
              padding: AppPadding.horizontalPadding,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}