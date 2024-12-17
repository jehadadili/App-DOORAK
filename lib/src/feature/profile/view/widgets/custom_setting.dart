import 'package:doorak/src/feature/profile/view/widgets/custom_dropdown_button_lang.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_dropdown_button_theme.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_section_title.dart';
import 'package:doorak/src/feature/profile/view/widgets/switch_list_tile_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSetting extends StatelessWidget {
  const CustomSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: const CustomSectionTitle(title: "Setting"),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              const Expanded(child: CustomDropdownButtonLang()),
              SizedBox(
                width: 10.w,
              ),
              const Expanded(child: CustomDropdownButtonTheme())
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const SwitchListTileExample()
      ],
    );
  }
}
