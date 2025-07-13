import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCustomListTile extends StatelessWidget {
  final String text;
  final Function onTap;
  const ProfileCustomListTile({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        width: 341.w,
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 24.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              spreadRadius: 10.r,
              blurRadius: 10.r,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Color(0xff333333),
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Color(0xff333333)),
          ],
        ),
      ),
    );
  }
}
