import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Center(
          child: Text(
            language,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: isSelected
                      ? ColorApp.white
                      : ColorApp.white.withOpacity(0.40),
                ),
          ),
        ),
      ),
    );
  }
}
