import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/date-time/presntation/view/widgets/custom_continer_design_date_time.dart';
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
              height: Sizes.height(context) * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Image.asset(
                ImageApp.image,
                height: 110.h,
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 25.w,
                  vertical: 15.h,
                ),
                child: const CustomContinerDesignDateTime()),
            SizedBox(
              height: Sizes.height(context) * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
