import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/action_buttons.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/reservation_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerDesignReservation extends StatelessWidget {
  const CustomContainerDesignReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 430.h,
        width: double.infinity,
        color: Theme.of(context).cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Center(
              child: Text(
                AppText.confirmReservationEN,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReservationDetails(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ActionButtons()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
