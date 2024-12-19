import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:doorak/src/feature/notifications/presntation/view/screen/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar({
  required BuildContext context,
}) {
  final themeCubit = context.watch<ThemeCubit>(); // متابعة تغييرات الثيم

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
        onPressed: () {
          context.pushWidget(push: const NotificationsScreen());
        },
        icon: Badge.count(
          count: 2,
          backgroundColor: ColorApp.blue,
          child: Icon(
            IconApp.notifications,
            color: ColorApp.white,
            size: 30.sp,
          ),
        ),
      ),
      IconButton(
        onPressed: () {
          themeCubit.togleThem(); // تبديل الثيم
        },
        icon: Icon(
          themeCubit.state == Themestate.dark
              ? Icons.light_mode // أيقونة الوضع الليلي
              : Icons.dark_mode, // أيقونة الوضع النهاري
          color: ColorApp.white,
        ),
      ),
    ],
  );
}
