import 'package:doorak/src/core/style/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/color/color_app.dart';

class LanguageOption extends StatelessWidget {
  final String language;
  final VoidCallback onTap;
  final bool isSelected;

  const LanguageOption({
    super.key,
    required this.language,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 343.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: ColorApp.pink.withOpacity(0.2),
          borderRadius: BorderRadius.circular(6.r),
          border:
              isSelected ? Border.all(color: Colors.white, width: 2.w) : null,
        ),
        child: Center(
          child: Text(
            language,
            style: TextStyles.w40_80,
          ),
        ),
      ),
    );
  }
}
