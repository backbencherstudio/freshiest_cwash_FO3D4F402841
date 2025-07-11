import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';

class ServiceHistoryCard extends StatelessWidget {
  const ServiceHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Container(
        width: 341.w,
        padding: EdgeInsets.all(14.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.03),
              blurRadius: 10.r,
              spreadRadius: 5.r,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 14.w,
          children: [
            SvgPicture.asset(AppIcons.carService, width: 44.w, height: 44.w),
            RichText(
              text: TextSpan(
                text: "Car Wash",
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: "\nCar Detailing-Full Time",
                    style: textTheme.bodyMedium?.copyWith(
                      color: Color(0xffA0A0A0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
