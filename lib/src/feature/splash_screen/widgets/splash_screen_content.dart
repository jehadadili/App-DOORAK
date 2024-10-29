import 'package:doorak/src/core/style/text_styles/text_styles.dart';
import 'package:doorak/src/core/widgets/background_container.dart';
import 'package:flutter/material.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Align(
              child: Text(
                "Dorak",
                style: TextStyles.p96,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 210.w),
            child: Align(
              child: Text(
                "from",
                style: TextStyles.g24,
              ),
            ),
          ),
          Image.asset(
            ImageApp.logo,
            width: 278.w,
          ),
          SizedBox(height: 67.h),
        ],
      ),
    );
  }
}
