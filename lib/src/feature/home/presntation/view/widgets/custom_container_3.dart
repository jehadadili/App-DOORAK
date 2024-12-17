import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer3 extends StatelessWidget {
  const CustomContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 155.h,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(6.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OverflowBar(
                spacing: 10,
                children: [
                  Text(
                    "2",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "X",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              Text(
                AppText.upcomingReservationsEN,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: ColorApp.white,
                    ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 80.w),
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorApp.pink,
                    ),
                    child: const Center(
                      child: Icon(
                        IconApp.arrowoutward,
                        size: 30,
                        color: ColorApp.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
