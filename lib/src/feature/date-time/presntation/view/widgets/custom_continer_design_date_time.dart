import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/date-time/presntation/view/widgets/custom_date.dart';
import 'package:doorak/src/feature/date-time/presntation/view/widgets/custom_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContinerDesignDateTime extends StatelessWidget {
  const CustomContinerDesignDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 264.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      FittedBox(
                        child: Text(AppText.chooseTimeEN,
                            style:
                                Theme.of(context).primaryTextTheme.titleMedium),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const CustomDate(),
                      SizedBox(
                        height: 15.h,
                      ),
                      const CustomTime(),
                      SizedBox(
                        height: 30.h,
                      ),
                      FittedBox(
                        child: CustomButtomLight(
                          horizontal: 20,
                          onPressed: () {},
                          text: AppText.confirmEN,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}