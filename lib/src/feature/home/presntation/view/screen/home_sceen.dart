import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/home/presntation/view/widgets/custom_container_1.dart';
import 'package:doorak/src/feature/home/presntation/view/widgets/custom_container_2.dart';
import 'package:doorak/src/feature/home/presntation/view/widgets/custom_container_3.dart';
import 'package:doorak/src/feature/new_ticket/presntation/view/screen/new_ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.03,
            ),
            Center(
              child: Text(
                AppText.welcomeBackEN,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: ColorApp.blue,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              child: Text(
                AppText.manageTicketsEN,
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
            const CustomContainer1(),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                children: [
                  const CustomContainer2(),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CustomContainer3(),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButtomLight(
              onPressed: () {
                context.pushWidget(push: const NewTicketScreen());
              },
              horizontal: 25,
              text: AppText.newTicketEN,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
