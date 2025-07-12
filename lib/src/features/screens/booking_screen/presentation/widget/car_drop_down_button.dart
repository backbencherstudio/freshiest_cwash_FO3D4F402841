import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

class CarDropdownButton extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String hint;
  final ValueChanged<String?> onChanged;

  const CarDropdownButton({
    super.key,
     this.value,
    required this.items,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
        decoration: CustomDropdownDecoration(
          closedBorder: BoxBorder.all(color: AppColor.borderColor),
          closedBorderRadius: BorderRadius.circular(10.r),

        ),
        hintText: hint,

        items: items, onChanged: (value){});
  }
}
