import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownButtonTheme extends StatelessWidget {
  const CustomDropdownButtonTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Theme',
          style: Theme.of(context).primaryTextTheme.bodySmall,
        ),
        SizedBox(height: 5.h),
        SizedBox(
          height: 40.h,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .inputDecorationTheme
                  .fillColor, // الخلفية حسب الثيم الحالي
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: DropdownButton<Themestate>(
              value: themeCubit.state,
              isExpanded: true,
              dropdownColor: ColorApp.primarycolor, // خلفية قائمة الخيارات
              underline: Container(), // إزالة الخط السفلي
              onChanged: (Themestate? value) {
                if (value != null) {
                  themeCubit.togleThem();
                }
              },
              items: [
                DropdownMenuItem(
                  value: Themestate.light,
                  child: Text(
                    AppText.lightModeEN,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: Themestate.dark,
                  child: Text(
                    AppText.darkModeEN,
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
