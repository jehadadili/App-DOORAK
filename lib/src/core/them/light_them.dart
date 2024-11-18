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
      secondary: ColorApp.greydark.withOpacity(0.4),
    ),
    cardColor: ColorApp.black.withOpacity(0.10),
    primaryTextTheme: TextTheme(
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
      displayLarge: StyleTextLight.displayLargewhite30W400,
      displayMedium: StyleTextLight.displayMediumpink26W900,
      displaySmall: StyleTextLight.displaySmallwihte18W500,
      labelLarge: StyleTextLight.labelLargepink92W800,
      titleLarge: StyleTextLight.titleLargewhite38W500,
      titleMedium: StyleTextLight.titleMediumwhite22W500,
      titleSmall: StyleTextLight.smailtitlegrey12W400,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.primarycolor,
      ),
    ),
  );
}
