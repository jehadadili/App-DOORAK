import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/style/color/color_app.dart';

class NoAccountSection extends StatelessWidget {
  const NoAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: Row(
        children: [
          Text(
            AppText.noAccountEN,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorApp.black.withOpacity(0.25)),
          ),
          SizedBox(
            width: 10.w,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              AppText.signUpEN,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: ColorApp.primarycolor),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
