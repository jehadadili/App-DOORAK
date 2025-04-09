import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/widgets/otp_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneInputSection extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  PhoneInputSection({super.key});
  void _onSendOtp(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Theme.of(context).canvasColor,
      builder: (_) => const OTPDialog(),
    );
  }

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
              AppText.enteremailEN,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child:  CustomTextFieldWidgets(
            height: 40,
            labelText: AppText.labelemailEN,
            prefixIcon: const Icon(IconApp.email),
            controller: emailController,
            hintText: AppText.hintemailEN,
            keyboardType: TextInputType.emailAddress,
            validator: (p0) {
              return null;
            },
          ),
            ),
            SizedBox(height: 20.h),
            CustomButtomLight(
              horizontal: 17,
              backgroundColor: ColorApp.primarycolor,
              text: "Send OTP",
              onPressed: () => _onSendOtp(context),
            ),
          ],
        ),
      ),
    );
  }
}
