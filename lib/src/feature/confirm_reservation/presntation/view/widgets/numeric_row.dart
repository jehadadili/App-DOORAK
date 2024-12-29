import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumericRow extends StatelessWidget {
  final String title;
  final String value;

  const NumericRow({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).primaryTextTheme.displayMedium,
        ),
        SizedBox(width: 10.w),
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
