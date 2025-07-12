import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/features/screens/booking_screen/presentation/widget/booking_confirmation_dialog/booking_confirmation_dialog.dart';
import 'package:freshiest_cwash_app/src/features/screens/booking_screen/presentation/widget/car_drop_down_button.dart';
import 'package:freshiest_cwash_app/src/features/screens/booking_screen/presentation/widget/select_order_date_time.dart';
import 'package:freshiest_cwash_app/src/features/screens/booking_screen/presentation/widget/select_your_order.dart';

import '../../service_details_screen/presentation/widgets/service_cover_photo.dart';

class BookingScreen extends StatelessWidget{
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ServiceCoverPhoto(),
          Expanded(child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 17.h,),
              SelectOrder(),
              SizedBox(height: 24.h,),
              SelectDateAndTime(),
              SizedBox(height: 24.h,),

              Padding(
                padding: AppPadding.horizontalPadding,
                child: CarDropdownButton(
                  onChanged: (value){},
                  items: ["abcd", "efgh", "ijkl", "mnop", "qrst", "uvzx", "yzab"],
                  hint: "Check Your Voucher",
                ),
              ),
              SizedBox(height: 24.h,),

              Padding(
                padding: AppPadding.horizontalPadding,
                child: ElevatedButton(onPressed: ()async{
                  await bookingConfirmationDialog(context: context);

                }, child: Text("Book a Wash"),),
              ),
              SizedBox(height: 60.h,),
            ],
          ))
        ],
      ),
    );
  }
}