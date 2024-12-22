import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: Container(
        height: 140.h,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(6.r)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            top: 11.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.totalReservationsEN,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: 0.h,
              ),
              OverflowBar(
                spacing: 10,
                children: [
                  Text(
                    "142",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Image.asset(IconApp.ticket)
                ],
              ),
              Row(
                children: [
                  Text(
                    AppText.reservedTicketsEN,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: ColorApp.white,
                        ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                  ),
                  Expanded(
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorApp.pink,
                      ),
                      child: const Center(
                        child: Icon(
                          IconApp.arrowoutward,
                          size: 30,
                          color: ColorApp.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
