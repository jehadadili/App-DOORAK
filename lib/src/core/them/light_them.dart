import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles_light.dart';
import 'package:flutter/material.dart';

ThemeData lightThem() {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: "Lato",
    scaffoldBackgroundColor: ColorApp.white,
    colorScheme: ColorScheme.light(
      primary: ColorApp.blue,
      secondary:
          ColorApp.greydark.withOpacity(0.4), // اللون الرمادي كـ unselected
      // onPrimary:
      //     ColorApp.white, // اللون المستخدم للنصوص والأيقونات داخل الأزرار
    ),
    textTheme: TextTheme(
      bodyLarge: StyleTextLight.bodyLargewhite48W800,
      bodySmall: StyleTextLight.bodysmailwihte16W500,
      displayLarge: StyleTextLight.displayLargewhite32W400,
      displayMedium: StyleTextLight.displayMediumpink28W900,
      displaySmall: StyleTextLight.displaySmallwihte20W500,
      labelLarge: StyleTextLight.labelLargepink96W800,
      titleLarge: StyleTextLight.titleLargewhite40W500,
      titleMedium: StyleTextLight.titleMediumwhite24W500,
      titleSmall: StyleTextLight.smailtitlegrey14W400,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.primarycolor,
      ),
    ),
  );
}
