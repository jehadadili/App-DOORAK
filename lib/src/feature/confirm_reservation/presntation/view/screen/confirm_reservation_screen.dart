import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmReservationScreen extends StatelessWidget {
  const ConfirmReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.001,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset(
                ImageApp.image,
                height: 100.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 370.h,
                width: double.infinity,
                color: Theme.of(context).cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Center(
                      child: FittedBox(
                        child: Text(
                          AppText.confirmReservationEN,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 180.w),
                            child: FittedBox(
                              child: Text(
                                AppText.serviceEN,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .displayMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.w),
                          FittedBox(
                            child: Text(
                              AppText.roomReservationEN,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                          SizedBox(height: 20.w),
                          Padding(
                            padding: EdgeInsets.only(right: 85.w),
                            child: FittedBox(
                              child: Text(
                                AppText.reservationForEN,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .displayMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.w),
                          FittedBox(
                            child: Text(
                              AppText.reservationDateTimeEN,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              Text(
                                AppText.yourNumberEN,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .displayMedium,
                              ),
                              SizedBox(width: 10.w),
                              FittedBox(
                                child: Text(
                                  "20",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              Text(
                                AppText.peopleWaitingEN,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .displayMedium,
                              ),
                              SizedBox(width: 10.w),
                              FittedBox(
                                child: Text(
                                  "10",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 130.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: ColorApp.greydark,
                                    borderRadius: BorderRadius.circular(6.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppText.cancelEN,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  width: 130.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: ColorApp.primarycolor,
                                    borderRadius: BorderRadius.circular(6.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppText.confirmEN,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
