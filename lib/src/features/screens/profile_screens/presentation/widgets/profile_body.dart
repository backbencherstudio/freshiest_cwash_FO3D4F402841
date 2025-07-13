import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/features/screens/profile_screens/presentation/widgets/profile_custom_list_tile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(height: 40.h),
        Text("Jhon Doe", style: textTheme.headlineSmall),
        SizedBox(height: 10.h),
        Text("Jhondoe@example.com"),
        SizedBox(height: 33.h),
        ProfileCustomListTile(text: "Setting", onTap: () {}),
        SizedBox(height: 14.h),
        ProfileCustomListTile(text: "Withdraw Request", onTap: () {}),
        SizedBox(height: 14.h),
        ProfileCustomListTile(text: "My Shop", onTap: () {}),
      ],
    );
  }
}
