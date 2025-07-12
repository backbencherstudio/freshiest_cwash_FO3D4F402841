import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:go_router/go_router.dart';

class FeedbackFormCard extends StatefulWidget {
  const FeedbackFormCard({super.key});

  @override
  State<FeedbackFormCard> createState() => _FeedbackFormCardState();
}

class _FeedbackFormCardState extends State<FeedbackFormCard> {
  double ratings = 4.5;
  late final TextEditingController feedbackController;
  late final FocusNode focusNode;

  @override
  void initState() {
    feedbackController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    feedbackController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "How is your Car Wash Experience",
          style: textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Text("Your Overall rating"),
        SizedBox(height: 16.h),
        StarRating(
          rating: ratings,
          size: 40.sp,allowHalfRating: true,
          onRatingChanged: (rating) {
            setState(() {
              ratings = rating;
            });
          },
        ),
        // Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Add detailed review"),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: feedbackController,
          focusNode: focusNode,
          onTapOutside: (_)=>focusNode.unfocus(),
          maxLines: 3,
          decoration: InputDecoration(
            hintText: "Placeholder",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColor.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColor.primary),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: ()=>context.go(RouteConst.home), child: Text("Save")),
        ),
      ],
    );
  }
}
