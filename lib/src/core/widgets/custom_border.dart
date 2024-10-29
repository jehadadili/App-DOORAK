import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';

class CustomBorder {
  static OutlineInputBorder defaultBorder({
    Color color = ColorApp.white,
    double width = 2,
    double radius = 10,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
      borderRadius: BorderRadius.circular(radius),
    );
  }
}
