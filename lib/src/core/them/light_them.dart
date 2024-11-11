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
