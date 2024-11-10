import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles_light.dart';
import 'package:flutter/material.dart';

ThemeData darkThem() {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Lato",
    scaffoldBackgroundColor: ColorApp.black,
    colorScheme: ColorScheme.dark(
      primary: ColorApp.primarycolor, 
      secondary: ColorApp.greydark.withOpacity(0.4),
      onPrimary: ColorApp.white,
    ),
    textTheme: TextTheme(
      bodyLarge: StyleTextLight.bodyLargewhite48W800.copyWith(color: Colors.black),
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
        backgroundColor: ColorApp.blue,
      ),
    ),
  );
}
