import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailColumn extends StatelessWidget {
  final String title;
  final String value;

  const DetailColumn({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).primaryTextTheme.displayMedium,
        ),
        SizedBox(height: 5.h),
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}