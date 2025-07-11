import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/features/screens/search_screen/presentation/widgets/serviceStationCard.dart';

class ServiceStationList extends StatelessWidget{
  const ServiceStationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return ServiceStationCard();
          }),
    );
  }
}