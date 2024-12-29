import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/upcoming_reservations/presntation/view/widgets/reservation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingReservationsScreen extends StatelessWidget {
  const UpcomingReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reservations = [
      {
        "title": "Room Reservation - Hotel A",
        "date": "12 / 03 / 2023",
      },
      {
        "title": "Plane flight - Airport X",
        "date": "11 / 05 / 2024",
      },
      {
        "title": "Passport Transaction - CSPD",
        "date": "12 / 22 / 2023",
      },
      {
        "title": "Schedule Reservation - University X",
        "date": "04 / 11 / 2023",
      },
    ];

    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Column(
        children: [
          SizedBox(height: Sizes.height(context) * 0.03),
          Text(
            AppText.upcomingReservationsEN,
            style: Theme.of(context).primaryTextTheme.displayLarge,
          ),
          SizedBox(height: 20.h), // تباعد آخر

          Expanded(
            child: ListView.builder(
              itemCount: reservations.length,
              itemBuilder: (context, index) {
                final reservation = reservations[index];
                bool showIcons = reservation["date"] ==
                    "11 / 05 / 2024"; // شرط عرض الأيقونات بناءً على التاريخ

                return ReservationItem(
                  title: reservation["title"]!,
                  date: reservation["date"]!,
                  backgroundColor: Theme.of(context)
                          .bottomNavigationBarTheme
                          .unselectedItemColor ??
                      Colors.white,
                  showIcons: showIcons, // تمرير قيمة showIcons
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
