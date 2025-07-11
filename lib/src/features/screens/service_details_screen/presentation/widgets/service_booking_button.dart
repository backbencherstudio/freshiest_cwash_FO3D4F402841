import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';

class ServiceBookingButton extends StatelessWidget{
  const ServiceBookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: SizedBox(
        height: 60.h,
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.chat),
            SizedBox(width: 12.w,),
            Expanded(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.h)
              ),
              onPressed: (){}, child: Text("Book Now"),),),
          ],
        ),
      ),
    );
  }
}