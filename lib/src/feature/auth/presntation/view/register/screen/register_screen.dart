import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/screen/login_screen.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/widgets/register_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/style/button/custom_buttom_light.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmpasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
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
                height: 400.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(
                  children: [
                    RegisterInfoCard(
                      passwordController: passwordController,
                      emailController: emailController,
                      usernameController: usernameController,
                      confirmpasswordController: confirmpasswordController,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButtomLight(
                      horizontal: 17,
                      text: AppText.registerEN,
                      onPressed: () {},
                    ),
                    SizedBox(height: 15.h),
                    NoAccountSection(
                      text1: AppText.alreadyAccountEN,
                      text2: AppText.loginEN,
                      onPressed: () {
                        context.pushReplacement(
                            pushReplacement: const LoginScreen());
                      },
                    )
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
