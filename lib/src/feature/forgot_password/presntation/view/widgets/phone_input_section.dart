import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/widgets/otp_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneInputSection extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

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
              AppText.enterphoneEN,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Row(
                children: [
                  Container(
                      width: 85.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).inputDecorationTheme.fillColor,
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
