import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSectionTitle extends StatelessWidget {
  const CustomSectionTitle({super.key, required this.title, this.icon});
  final String title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title, style: Theme.of(context).primaryTextTheme.bodyLarge),
        Icon(
          icon,
          color: ColorApp.blue,
          size: 20.sp,
        ),
      ],
    );
  }
}
