import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_widget_loading.dart';
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
            child: Column(
              children: [
                const Spacer(),
                Text(
                  AppText.appName,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorApp.white),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomWidgetLoading(
                  size: 80.sp,
                  color: ColorApp.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
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
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
      ],
    );
  }
}
