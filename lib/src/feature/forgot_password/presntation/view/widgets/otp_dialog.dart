import 'dart:async';
import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/widgets/change_password/presntation/view/screen/change_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPDialog extends StatefulWidget {
  const OTPDialog({super.key});

  @override
  State<OTPDialog> createState() => _OTPDialogState();
}

class _OTPDialogState extends State<OTPDialog> {
  final TextEditingController otpController = TextEditingController();
  int secondsRemaining = 60;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    otpController.dispose();
    timer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Enter OTP",
              style: Theme.of(context).primaryTextTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomTextFieldWidgets(
              height: 40,
              hintText: "Enter OTP",
              labelText: "OTP",
              validator: (value) {
                return null;
              },
              controller: otpController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Time remaining: $secondsRemaining seconds",
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.refresh,
                      color: secondsRemaining == 0 ? Colors.blue : Colors.grey),
                  onPressed: secondsRemaining == 0
                      ? () {
                          setState(() {
                            secondsRemaining = 60;
                          });
                          startCountdown();
                          //    resendOTP();
                        }
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CustomButtomLight(
                horizontal: 17,
                backgroundColor: ColorApp.primarycolor,
                text: "Send OTP",
                onPressed: () {
                  context.pushWidget(push: ChangePasswordScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
