import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightThem() {
  return ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorApp.primarycolor,
      selectedItemColor: ColorApp.white,
      unselectedItemColor: ColorApp.white,
    ),
    disabledColor: ColorApp.primarycolor.withOpacity(0.30),
    canvasColor: Colors.black.withOpacity(0.6),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorApp.primarycolor,
      titleTextStyle: StyleTextLight.displayLargewhite30W400.copyWith(
        fontWeight: FontWeight.w800,
      ),
    ),
    brightness: Brightness.light,
    fontFamily: "Lato",
    scaffoldBackgroundColor: ColorApp.white,
    colorScheme: ColorScheme.light(
      surfaceContainerLow: ColorApp.white,
      surface: ColorApp.primarycolor,
      primary: ColorApp.blue,
      secondary: ColorApp.greydark.withOpacity(0.4),
      onPrimary: ColorApp.blue,
      onErrorContainer: ColorApp.blue,
      surfaceContainer: ColorApp.blakandgrey.withOpacity(0.72),
    ),
    cardColor: ColorApp.black.withOpacity(0.10),
    primaryTextTheme: TextTheme(
      headlineLarge: StyleTextLight.headlineLargehite32W400.copyWith(
        color: ColorApp.blue,
        fontWeight: FontWeight.w800,
      ),
      labelSmall: StyleTextLight.displayMediumpink26W900.copyWith(
        color: ColorApp.primarycolor,
      ),
      bodyLarge: StyleTextLight.titleMediumwhite22W500
          .copyWith(fontWeight: FontWeight.w700, color: ColorApp.blue),
      bodySmall: StyleTextLight.bodysmailwihte14W500.copyWith(
          fontWeight: FontWeight.w200,
          color: ColorApp.blackdark.withOpacity(0.50)),
      displayMedium: StyleTextLight.displayLargewhite30W400
          .copyWith(color: ColorApp.black, fontSize: 28.sp),
      displayLarge: StyleTextLight.displayLargewhite30W400
          .copyWith(color: ColorApp.black, fontWeight: FontWeight.w800),
      titleMedium:
          StyleTextLight.titleMediumwhite22W500.copyWith(color: ColorApp.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorApp.greydark.withOpacity(0.10),
      hintStyle: StyleTextLight.bodysmailwihte14W500
          .copyWith(color: ColorApp.black.withOpacity(0.25)),
      labelStyle: StyleTextLight.bodysmailwihte14W500
          .copyWith(color: ColorApp.black.withOpacity(0.25)),
      prefixIconColor: ColorApp.black.withOpacity(0.25),
      suffixIconColor: ColorApp.black.withOpacity(0.25),
    ),
    textTheme: TextTheme(
        bodySmall: StyleTextLight.bodysmailwihte14W500,
        bodyLarge: StyleTextLight.bodyLargewhite46W800,
        displayLarge: StyleTextLight.displayLargewhite30W400,
        displayMedium: StyleTextLight.displayMediumpink26W900,
        displaySmall: StyleTextLight.displaySmallwihte18W500,
        labelLarge: StyleTextLight.labelLargepink92W800,
        titleLarge: StyleTextLight.titleLargewhite38W500,
        titleMedium: StyleTextLight.titleMediumwhite22W500,
        labelMedium: StyleTextLight.labelMediumblack20W400,
        titleSmall: StyleTextLight.smailtitlegrey12W400,
        bodyMedium: StyleTextLight.bodyMediumblack28W400,
        headlineLarge: StyleTextLight.headlineLargehite32W400),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.primarycolor,
        disabledBackgroundColor: ColorApp.primarycolor,
      ),
    ),
  );
}
