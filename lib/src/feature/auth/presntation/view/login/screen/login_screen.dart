import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/login_info_card.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/screen/register_screen.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h), // المسافة العلوية
              Text(
                AppText.appName,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Container(
                  width: double.infinity,  // يجعل العرض ملائم لحجم الشاشة
                  padding: EdgeInsets.symmetric(vertical: 20.h),  // مسافة رأسية داخل الـ Container
                  margin: EdgeInsets.only(bottom: 50.h),  // مسافة من الأسفل
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Column(
                    children: [
                      LoginInfoCard(
                        passwordController: passwordController,
                        phoneController: phoneController,
                      ),
                      SizedBox(height: 30.h),
                      CustomButtomLight(
                        horizontal: 17,
                        text: AppText.loginEN,
                        onPressed: () {},
                      ),
                      SizedBox(height: 15.h),
                      NoAccountSection(
                        text1: AppText.noAccountEN,
                        text2: AppText.signUpEN,
                        onPressed: () {
                          context.pushReplacement(
                              pushReplacement: const RegisterScreen());
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
