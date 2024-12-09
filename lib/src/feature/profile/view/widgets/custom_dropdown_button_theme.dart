import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownButtonTheme extends StatelessWidget {
  const CustomDropdownButtonTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppText.displayEN,
          style: Theme.of(context).primaryTextTheme.bodySmall,
        ),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 40.h,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).inputDecorationTheme.fillColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: DropdownButton<String>(
              value: AppText.systemEN,
              underline: const SizedBox(),
              onChanged: (value) {},
              dropdownColor: Theme.of(context).inputDecorationTheme.fillColor,
              isExpanded: true,
              items: [
                DropdownMenuItem(
                  value: AppText.systemEN,
                  child: Text(
                    AppText.systemEN,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: AppText.darkModeEN,
                  child: Text(
                    AppText.darkModeEN,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: AppText.lightModeEN,
                  child: Text(
                    AppText.lightModeEN,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
