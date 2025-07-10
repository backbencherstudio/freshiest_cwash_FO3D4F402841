import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/features/screens/history_screens/presentation/widgets/service_history_card.dart';

import 'car_service_details.dart';
import 'home_search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.h),
          Padding(
            padding: AppPadding.horizontalPadding,
            child: Text("Find your Car Wash!", style: textTheme.headlineSmall),
          ),
          SizedBox(height: 20.h),
          HomeSearchBar(),
          SizedBox(height: 30.h),
          CarServiceDetails(),
          SizedBox(height: 30.h),
          Padding(
            padding: AppPadding.horizontalPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent", style: textTheme.titleMedium),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: textTheme.bodyMedium?.copyWith(
                      color: Color(0xff989898),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff989898),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          ServiceHistoryCard(),
          SizedBox(height: 16.h),

          ServiceHistoryCard(),

          SizedBox(height: 140.h,)
        ],
      ),
    );
  }
}
