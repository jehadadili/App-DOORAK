import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles_dark.dart';
import 'package:flutter/material.dart';

ThemeData darkThem() {
  return ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorApp.blakandgrey.withOpacity(0.72),
      selectedItemColor: ColorApp.blakandgrey.withOpacity(0.60),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorApp.black.withOpacity(0.15),
      titleTextStyle: StyleTextDark.displayLargewhite30W400.copyWith(
        fontWeight: FontWeight.w800,
        color: ColorApp.primarycolor,
      ),
    ),
    brightness: Brightness.dark,
    fontFamily: "Lato",
    scaffoldBackgroundColor: Colors.black, // الخلفية الشفافة لتفعيل التدرج
    colorScheme: ColorScheme.dark(
      surfaceContainerLow: ColorApp.primarycolor,
      surface: ColorApp.primarycolor.withOpacity(0.15),
      primary: ColorApp.primarycolor,
      secondary: ColorApp.greydark.withOpacity(0.4),
      onPrimary: ColorApp.blue.withOpacity(0.41),
      surfaceContainer: ColorApp.white2.withOpacity(0.15),
    ),
    cardColor: ColorApp.white.withOpacity(0.05),
    primaryTextTheme: TextTheme(
      displayLarge: StyleTextDark.displayLargewhite30W400
          .copyWith(color: ColorApp.white, fontWeight: FontWeight.w800),
      titleMedium:
          StyleTextDark.titleMediumwhite22W500.copyWith(color: ColorApp.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorApp.greydark.withOpacity(0.40),
      hintStyle: StyleTextDark.bodysmailwihte14W500,
      labelStyle: StyleTextDark.bodysmailwihte14W500,
      prefixIconColor: ColorApp.white.withOpacity(0.25),
      suffixIconColor: ColorApp.white.withOpacity(0.25),
    ),
    textTheme: TextTheme(
        bodyLarge: StyleTextDark.bodyLargewhite46W800,
        bodySmall: StyleTextDark.bodysmailwihte14W500,
        displayLarge: StyleTextDark.displayLargewhite30W400,
        displayMedium: StyleTextDark.displayMediumpink26W900,
        displaySmall: StyleTextDark.displaySmallwihte18W500,
        labelLarge: StyleTextDark.labelLargepink92W800,
        titleLarge: StyleTextDark.titleLargewhite38W500,
        titleMedium: StyleTextDark.titleMediumwhite22W500,
        titleSmall: StyleTextDark.smailtitlegrey12W400,
        headlineLarge: StyleTextDark.headlineLargehite32W400),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.blue,
      ),
    ),
  );
}

class DarkModeBackground extends StatelessWidget {
  final Widget child;

  const DarkModeBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            ColorApp.primarycolor, // اللون الوردي
            Colors.black, // اللون الأسود
          ],
          center: Alignment.topCenter,
          radius: 0.8,
          focal: Alignment.topCenter,
          focalRadius: 0.01,
        ),
      ),
      child: child, // محتوى الصفحة
    );
  }
}
