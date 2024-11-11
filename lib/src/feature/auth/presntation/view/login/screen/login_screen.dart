import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/login_info_card.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/no_account_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Text(
              AppText.appName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 356.h,
                decoration: BoxDecoration(
                  color: ColorApp.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(
                  children: [
                    LoginInfoCard(
                      paswwordController: passwordController,
                      phoneController: passwordController,
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    CustomButtomLight(
                      horizontal: 17,
                      text: AppText.loginEN,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const NoAccountSection()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
