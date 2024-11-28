import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/date-time/presntation/view/widgets/custom_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateTimeScreen extends StatelessWidget {
  const DateTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Image.asset(
                ImageApp.image,
                height: 110.h,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 25.w),
              child: Container(
                height: 264.h,
                decoration: BoxDecoration(
                  color: ColorApp.blackdark.withOpacity(0.10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    FittedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 80.w),
                        child: Text(
                          AppText.chooseTimeEN,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: ColorApp.black,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: const CustomDate(),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
