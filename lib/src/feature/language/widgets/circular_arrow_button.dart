import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/color/color_app.dart';

class CircularArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularArrowButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 288.w), // يمكنك تغيير القيمة حسب الحاجة
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 70.w, // عرض دائري
          height: 70.h, // ارتفاع دائري
          decoration: BoxDecoration(
            color: ColorApp.blue.withOpacity(0.2),
            shape: BoxShape.circle, // الشكل دائري
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Icon(
            Icons.arrow_forward,
            size: 48.sp,
            color: ColorApp.white.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
