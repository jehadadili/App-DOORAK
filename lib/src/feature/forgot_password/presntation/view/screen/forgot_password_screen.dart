

import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Column(
        children: [
          SizedBox(height: Sizes.height(context) * 0.2),
          Text(
            AppText.appName,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              margin: EdgeInsets.only(bottom: 50.h),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Column(children: [
                Text(AppText.enterphoneEN,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.titleMedium),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Row(
                    children: [
                      Container(
                          width: 85.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .inputDecorationTheme
                                  .fillColor,
                              borderRadius: BorderRadius.circular(6.r)),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageApp.jo,
                                width: 42.w,
                                height: 32.h,
                              ),
                              Text("+962",
                                  style: Theme.of(context)
                                      .inputDecorationTheme
                                      .hintStyle),
                            ],
                          )),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: CustomTextFieldWidgets(
                          height: 40,
                          width: 180.w,
                          labelText: AppText.labelPhoneEN,
                          controller: phoneController,
                          hintText: AppText.hintPhoneEN,
                          keyboardType: TextInputType.phone,
                          validator: (p0) {
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButtomLight(
                  horizontal: 17,
                  text: "Send OTP",
                  onPressed: () {},
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
