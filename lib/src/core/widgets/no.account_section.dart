import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/color/color_app.dart';

class NoAccountSection extends StatelessWidget {
  const NoAccountSection(
      {super.key, required this.text1, required this.text2, this.onPressed});
  final String text1;
  final String text2;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        children: [
          Text(
            text1,
            style: Theme.of(context).inputDecorationTheme.hintStyle,
          ),
          SizedBox(
            width: 5.w,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              text2,
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
