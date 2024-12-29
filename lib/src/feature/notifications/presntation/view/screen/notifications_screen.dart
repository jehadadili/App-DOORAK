import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/back_button_widget.dart';
import 'package:doorak/src/feature/notifications/presntation/view/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BackButtonWidget(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          Text(
            AppText.notificationEN,
            style: Theme.of(context).primaryTextTheme.headlineLarge,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6, // عدد الإشعارات
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: NotificationCard(
                    title: index.isEven ? 'CSPD' : 'Hotel A',
                    date: index.isEven ? '10/12/2025' : '9/9/2025',
                    description: index.isEven
                        ? '26 people until your turn, estimated time is 35 minutes'
                        : 'Your room will be ready at 10:00 pm on the 12th of September',
                  ),
                );
              },
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        ],
      ),
    );
  }
}
