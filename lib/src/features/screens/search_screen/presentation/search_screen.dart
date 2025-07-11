import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:freshiest_cwash_app/src/features/screens/search_screen/presentation/widgets/service_station_list.dart';
import 'package:freshiest_cwash_app/src/features/screens/search_screen/presentation/widgets/service_station_search_bar.dart';

import '../../../common_widgets/notification_button/notification_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child:Image.asset('assets/images/map.png',fit:BoxFit.cover,),
          ),
          Positioned.fill(child: SafeArea(
            child: Padding(
              padding: AppPadding.horizontalPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ServiceStationSearchbar(),

                  Spacer(),

                  ServiceStationList(),
                  SizedBox(height: 60.h,)
                ],
              ),
            ),
          ),)
        ],
      ),
    );
  }
}
