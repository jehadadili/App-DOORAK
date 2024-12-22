import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: ButtonWidget(
            text: AppText.cancelEN,
            color: ColorApp.greydark,
          ),
        ),
        SizedBox(width: 10.w),
        const Expanded(
          child: ButtonWidget(
            text: AppText.confirmEN,
            color: ColorApp.primarycolor,
          ),
        ),
      ],
    );
  }
}