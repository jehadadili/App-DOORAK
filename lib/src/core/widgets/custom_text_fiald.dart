import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/widgets/custom_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  const CustomTextFieldWidgets({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    required this.validator,
    this.controller,
    this.keyboardType,
    required this.width,
    required this.height,
    required this.horizontal,
  });

  final String hintText;
  final String labelText;
  final Widget? prefixIcon;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double width;
  final double height;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal.w),
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(color: ColorApp.black),
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            fillColor: ColorApp.greydark,
            filled: true,
            focusedBorder: CustomBorder.defaultBorder(
                color: ColorApp.white.withOpacity(0.8), width: 1, radius: 15),
            errorBorder: CustomBorder.defaultBorder(
              color: ColorApp.red,
              width: 1,
              radius: 5,
            ),
            focusedErrorBorder: CustomBorder.defaultBorder(
              color: ColorApp.red,
              width: 1,
              radius: 5,
            ),
            prefixIcon: prefixIcon,
            prefixIconColor: ColorApp.white.withOpacity(0.25),
            hintText: hintText,
            hintStyle: TextStyle(
              color: ColorApp.white.withOpacity(0.25),
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: ColorApp.white.withOpacity(0.25),
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
