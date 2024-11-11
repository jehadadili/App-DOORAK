import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles_dark.dart';
import 'package:flutter/material.dart';

ThemeData darkThem() {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Lato",
    scaffoldBackgroundColor: ColorApp.black,
    colorScheme: ColorScheme.dark(
      primary: ColorApp.primarycolor,
      secondary: ColorApp.greydark.withOpacity(0.4),
    ),
    textTheme: TextTheme(
      bodyLarge:
          StyleTextDark.bodyLargewhite46W800.copyWith(color: Colors.black),
      bodySmall: StyleTextDark.bodysmailwihte14W500,
      displayLarge: StyleTextDark.displayLargewhite30W400,
      displayMedium: StyleTextDark.displayMediumpink26W900,
      displaySmall: StyleTextDark.displaySmallwihte18W500,
      labelLarge: StyleTextDark.labelLargepink92W800,
      titleLarge: StyleTextDark.titleLargewhite38W500,
      titleMedium: StyleTextDark.titleMediumwhite22W500,
      titleSmall: StyleTextDark.smailtitlegrey12W400,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.blue,
      ),
    ),
  );
}
