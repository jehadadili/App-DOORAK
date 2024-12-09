import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar({
  required BuildContext context, // تمرير context كمعامل
}) {
  return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    title: Text(
      "Dorak",
      style: Theme.of(context).appBarTheme.titleTextStyle,
    ),
    centerTitle: false,
    iconTheme: const IconThemeData(color: ColorApp.white),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Badge.count(
          count: 2,
          child: Icon(
            IconApp.notifications,
            color: ColorApp.white,
            size: 30.sp,
          ),
        ),
      ),
      IconButton(
        onPressed: () {
          context.read<ThemeCubit>().togleThem();
        },
        icon: Icon(context.read<ThemeCubit>().state == Themestate.dark
            ? Icons.light_mode
            : Icons.dark_mode),
      ),
    ],
  );
}
