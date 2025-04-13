import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/widgets/custom_border.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  const CustomTextFieldWidgets({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    required this.validator,
    this.controller,
    this.keyboardType,
    required this.height,
    this.width,
    this.obscureText,
    this.suffixIcon,
  });

  final String hintText;
  final String labelText;
  final Widget? prefixIcon;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double height;
  final double? width;
  final bool? obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width,
      height: height,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: ColorApp.black.withOpacity(0.25)),
        controller: controller,
        validator: validator,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
          filled: true,
          enabledBorder: CustomBorder.defaultBorder(
            color: Colors.transparent,
            width: 0,
            radius: 6,
          ),
          focusedBorder: CustomBorder.defaultBorder(
            color: ColorApp.white.withOpacity(0.8),
            width: 1,
            radius: 6,
          ),
          errorBorder: CustomBorder.defaultBorder(
            color: ColorApp.red,
            width: 2,
            radius: 6,
          ),

          border: InputBorder.none, // لإزالة الخط السفلي تمامًا
          prefixIcon: prefixIcon,
          prefixIconColor:
              Theme.of(context).inputDecorationTheme.prefixIconColor,
          suffixIcon: suffixIcon,
          suffixIconColor:
              Theme.of(context).inputDecorationTheme.suffixIconColor,
          hintText: hintText,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          labelText: labelText,
          labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
        ),
      ),
    );
  }
}
