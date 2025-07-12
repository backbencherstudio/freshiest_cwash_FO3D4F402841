import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:horizontal_list_calendar/horizontal_list_calendar.dart';
import 'package:intl/intl.dart';

class SelectDateAndTime extends StatefulWidget {
  const SelectDateAndTime({super.key});

  @override
  State<SelectDateAndTime> createState() => _SelectDateAndTimeState();
}

class _SelectDateAndTimeState extends State<SelectDateAndTime> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select Your Date", style: textTheme.headlineSmall),
          SizedBox(height: 15.h),
          HorizontalListCalendar(
            unSelectedFillColor: AppColor.primary,
            selectedFillColor: AppColor.onPrimary,
            unSelectedTextStyle: textTheme.bodyMedium!.copyWith(color: AppColor.onPrimary),
            selectedTextStyle: textTheme.bodyMedium!,
            scrollController: _scrollController,
            onTap: (value) {
              debugPrint(
                "\nSelected date : ${DateFormat('dd MMM, yyyy').format(value)}\n",
              );
            },
          ),
          SizedBox(height: 25.h),
          Text("Select Time Slot", style: textTheme.headlineSmall),
          SizedBox(height: 15.h),
          GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: 6,
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
              crossAxisSpacing: 2.w,
                mainAxisSpacing: 5.h,
                  childAspectRatio: 3,
              ),
              itemBuilder: (_, index){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 7.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColor.primary,
                  ),
                  child: FittedBox(child: Text("09.00 - 10.00 AM",style: textTheme.bodyMedium?.copyWith(color: AppColor.onPrimary),)),
                );
              }
          )
        ],
      ),
    );
  }
}
