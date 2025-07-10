import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';

class HomeSearchBar extends StatelessWidget{
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: AppPadding.horizontalPadding,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Padding(padding: EdgeInsets.all(16.r), child: SvgPicture.asset(AppIcons.search),),
        suffixIcon  : Padding(padding: EdgeInsets.all(14.r), child: SvgPicture.asset(AppIcons.filter),),
      ),
    ),
    );
  }
}