import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/detail_column.dart';
import 'package:doorak/src/feature/confirm_reservation/presntation/view/widgets/numeric_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationDetails extends StatelessWidget {
  const ReservationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailColumn(
              title: AppText.serviceEN, value: AppText.roomReservationEN),
          SizedBox(height: 10.h),
          const DetailColumn(
              title: AppText.reservationForEN,
              value: AppText.reservationDateTimeEN),
          SizedBox(height: 10.h),
          const FittedBox(
              child: NumericRow(title: AppText.yourNumberEN, value: "20")),
          SizedBox(height: 10.h),
          const FittedBox(
              child: NumericRow(title: AppText.peopleWaitingEN, value: "10")),
        ],
      ),
    );
  }
}
