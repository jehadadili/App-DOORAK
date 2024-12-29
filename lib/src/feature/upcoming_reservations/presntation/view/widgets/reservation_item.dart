import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationItem extends StatelessWidget {
  final String title;
  final String date;
  final Color backgroundColor;
  final bool showIcons; // متغير لتحديد ما إذا كان يجب عرض الأيقونات أم لا

  const ReservationItem({
    super.key,
    required this.title,
    required this.date,
    required this.backgroundColor,
    required this.showIcons, // تم إضافته
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // عنصر الحجز
        Container(
          color: backgroundColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            date,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color: Colors.grey.withOpacity(0.55)),
                          ),
                          SizedBox(
                            width: 150.w,
                          ),
                          if (showIcons)
                            Column(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: ColorApp.blue,
                                  size: 18.sp,
                                ),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // إضافة الخط الرمادي بين العناصر
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Divider(
            color: ColorApp.grey.withOpacity(0.3),
            thickness: 1.h,
          ),
        ),
      ],
    );
  }
}
