import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtomLight extends StatelessWidget {
  const CustomButtomLight({
    super.key,
    required this.text,
    this.onPressed,
    required this.horizontal,
    this.backgroundColor, SizedBox? child, // معامل لون الزر الجديد
  });

  final String text;
  final void Function()? onPressed;
  final double horizontal;
  final Color? backgroundColor; // اللون الخلفي يمكن تغييره

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal.w),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 50.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ??
                Theme.of(context)
                    .elevatedButtonTheme
                    .style!
                    .backgroundColor
                    ?.resolve({}),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ColorApp.white.withOpacity(0.80),
                ),
          ),
        ),
      ),
    );
  }
}
