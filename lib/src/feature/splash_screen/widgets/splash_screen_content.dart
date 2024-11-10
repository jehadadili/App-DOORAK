import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Align(
            child: Text(
              AppText.appName,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: ColorApp.white),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 210.w),
          child: Align(
            child: Text(
              AppText.from,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Image.asset(
          ImageApp.logo,
          width: 278.w,
        ),
        SizedBox(height: 67.h),
      ],
    );
  }
}
