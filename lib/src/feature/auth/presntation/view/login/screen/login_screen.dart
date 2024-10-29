import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/text_styles/text_styles.dart';
import 'package:doorak/src/core/widgets/background_container.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
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
      body: BackgroundContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 198.h),
                Text(
                  "Dorak",
                  style: TextStyles.p96,
                ),
                SizedBox(height: 19.h),
                Container(
                  width: double.infinity,
                  height: 356.h,
                  decoration: BoxDecoration(
                    color: ColorApp.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 17.h),
                      Text(
                        "Enter your login information",
                        style: TextStyles.w24,
                      ),
                      SizedBox(height: 28.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 101.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: ColorApp.greydark,
                                    borderRadius: BorderRadius.circular(6.r)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      ImageApp.jo,
                                      width: 42.w,
                                      height: 32.h,
                                    ),
                                    Text(
                                      "+962",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: ColorApp.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )),
                            CustomTextFieldWidgets(
                              hintText: "phone number",
                              width: 201,
                              height: 40,
                              horizontal: 0,
                              labelText: "phone number",
                              controller: passwordController,
                              validator: (value) {
                                return null; // يمكنك إضافة التحقق هنا
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFieldWidgets(
                        hintText: "Password",
                        width: 309,
                        height: 40,
                        horizontal: 17,
                        labelText: "Password",
                        controller: passwordController,
                        validator: (value) {
                          return null; // يمكنك إضافة التحقق هنا
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
