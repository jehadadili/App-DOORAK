import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/widgets/secure_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/image/image_app.dart';

class RegisterInfoCard extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;

  const RegisterInfoCard(
      {super.key,
      required this.phoneController,
      required this.passwordController,
      required this.usernameController,
      required this.confirmpasswordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(AppText.createregisterEN,
            style: Theme.of(context).primaryTextTheme.titleMedium),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomTextFieldWidgets(
            height: 40,
            labelText: AppText.labelUsernameEN,
            controller: phoneController,
            hintText: AppText.hintUsernameEN,
            keyboardType: TextInputType.phone,
            validator: (p0) {
              return null;
            },
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
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
                  controller: usernameController,
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
          height: 8.h,
        ),
        SecureTextField(
          passwordController: passwordController,
          confirmpasswordController: confirmpasswordController,
        ),
      ],
    );
  }
}
