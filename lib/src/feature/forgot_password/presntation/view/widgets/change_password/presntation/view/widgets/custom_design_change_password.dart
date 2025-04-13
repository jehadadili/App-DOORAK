import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/feature/auth/view/register/widgets/secure_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDesignChangePassword extends StatelessWidget {
  const CustomDesignChangePassword(
      {super.key,
      required this.passwordController,
      required this.confirmpasswordController});
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20.h),
        margin: EdgeInsets.only(bottom: 50.h),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          children: [
            Text(
              "Enter your login information",
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            SizedBox(height: 20.h),
            SecureTextField(
              passwordController: passwordController,
              confirmpasswordController: confirmpasswordController,
            ),
            SizedBox(height: 20.h),
            const CustomButtomLight(
              horizontal: 17,
              backgroundColor: ColorApp.primarycolor,
              text: "Change Password",
            ),
          ],
        ),
      ),
    );
  }
}
