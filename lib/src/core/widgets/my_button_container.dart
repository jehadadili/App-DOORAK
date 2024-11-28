import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonContainer extends StatelessWidget {
  const MyButtonContainer({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Theme.of(context).colorScheme.surface,
          width: 3.w,
        ),
        borderRadius: BorderRadius.circular(10).w,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
