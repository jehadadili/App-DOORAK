import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/image/image_app.dart';

class LoginInfoCard extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController passwordController;

  const LoginInfoCard(
      {super.key,
      required this.phoneController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppText.loginInfoEN,
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
                      color: Theme.of(context).inputDecorationTheme.fillColor,
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageApp.jo,
                        width: 42.w,
                        height: 32.h,
                      ),
                      Text("+962",
                          style:
                              Theme.of(context).inputDecorationTheme.hintStyle),
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
        SizedBox(height: 8.h),
        PassWordTextField(
          passwordController: passwordController,
        ),
      ],
    );
  }
}
