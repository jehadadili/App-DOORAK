import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/color/color_app.dart';

class TextStyles {
  // Pink text styles
  static TextStyle p96 = TextStyle(
    color: ColorApp.pink,
    fontSize: 96.sp,
    fontWeight: FontWeight.w800,
  );
  static TextStyle p32 = TextStyle(
    color: ColorApp.pink,
    fontSize: 32.sp,
    fontWeight: FontWeight.w800,
  );
  static TextStyle p28 = TextStyle(
    color: ColorApp.pink,
    fontSize: 28.sp,
    fontWeight: FontWeight.w900,
  );
  static TextStyle p16 = TextStyle(
    color: ColorApp.pink,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  // White text styles
  static TextStyle w48 = TextStyle(
    color: ColorApp.white,
    fontSize: 48.sp,
    fontWeight: FontWeight.w800,
  );
  static TextStyle w40 = TextStyle(
    color: ColorApp.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle w40_80 = TextStyle(
    color: ColorApp.white.withOpacity(0.8),
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle w32 = TextStyle(
    color: ColorApp.white,
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle w24 = TextStyle(
    color: ColorApp.white,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle w20 = TextStyle(
    color: ColorApp.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle w16 = TextStyle(
    color: ColorApp.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle w16_25 = TextStyle(
    color: ColorApp.white.withOpacity(0.25),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  // Grey text styles
  static TextStyle g24 = TextStyle(
    color: ColorApp.grey,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle g14 = TextStyle(
    color: ColorApp.grey.withOpacity(0.55),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
