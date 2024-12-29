import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h, right: 200.w),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back, color: ColorApp.white),
        label: Text(
          "Back",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: ColorApp.white,
              ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.blue,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
