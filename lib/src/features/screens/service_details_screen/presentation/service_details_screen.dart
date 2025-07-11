import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/features/screens/service_details_screen/presentation/widgets/service_booking_button.dart';
import 'package:freshiest_cwash_app/src/features/screens/service_details_screen/presentation/widgets/service_cover_photo.dart';
import 'package:freshiest_cwash_app/src/features/screens/service_details_screen/presentation/widgets/service_type_list.dart';
import 'package:freshiest_cwash_app/src/features/screens/service_details_screen/presentation/widgets/station_details.dart';
import 'package:go_router/go_router.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ServiceCoverPhoto(),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 21.h,),
                StationDetails(),
                SizedBox(height: 35.h,),
                ServiceTypeList(),
                SizedBox(height: 44.h,),
                ServiceBookingButton(),
                SizedBox(height: 35.h,),
              ],
            ),
          )

        ],
      ),
    );
  }
}
