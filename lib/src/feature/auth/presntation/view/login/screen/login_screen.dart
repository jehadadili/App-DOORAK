import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/cubit.dart';
import 'package:doorak/src/core/widgets/custom_snack_bar.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/login_info_card.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/screen/register_screen.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/state.dart';
import 'package:doorak/src/feature/bottom_navigation_bar/view/screen/bottom_navigation_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _showCustomSnackBar(BuildContext context, String message,
      {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              isError ? Icons.error_outline : Icons.check_circle_outline,
              color: Colors.white,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: isError ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Sizes.height(context) * 0.1),
              Text(
                AppText.appName,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Padding(
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
                      Text(AppText.loginInfoEN,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).primaryTextTheme.titleMedium),
                      SizedBox(height: 20.h),
                      LoginInfoCard(
                        passwordController: passwordController,
                        emailController: emailController,
                      ),
                      SizedBox(height: 30.h),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthSuccess) {
                            // عند نجاح تسجيل الدخول، انتقل إلى الشاشة الرئيسية
                            _showCustomSnackBar(context,
                                state.message ?? "Reserved Successfully");
                            context.pushReplacement(
                                pushReplacement:
                                    const CustomCurvedNavigationBar());
                          } else if (state is AuthFailure) {
                            // عرض رسالة خطأ عند فشل تسجيل الدخول
                            _showCustomSnackBar(context, state.message,
                                isError: true);
                          }
                        },
                        builder: (context, state) {
                          return CustomButtomLight(
                            horizontal: 17,
                            text: AppText
                                .loginEN, 
                            onPressed: state is AuthLoading
                                ? null
                                : () {
                                    if (emailController.text.trim().isEmpty ||
                                        passwordController.text.isEmpty) {
                                      CustomSnackBar.show(
                                        context,
                                        "Please enter your email and password.",
                                        isError: true,
                                      );
                                      return;
                                    }
                                    context.read<AuthCubit>().login(
                                          emailController.text.trim(),
                                          passwordController.text,
                                        );
                                  },
                            child: state is AuthLoading
                                ? SizedBox(
                                    height: 20.h,
                                    width: 20.w,
                                    child: const CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  )
                                : null, 
                          );
                        },
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
