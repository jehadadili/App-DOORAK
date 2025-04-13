import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/view_model/cubit.dart';
import 'package:doorak/src/feature/auth/view_model/state.dart';
import 'package:doorak/src/feature/auth/view/register/screen/register_screen.dart';
import 'package:doorak/src/feature/bottom_navigation_bar/view/screen/bottom_navigation_bar_screen.dart';
import 'package:doorak/src/core/widgets/custom_snack_bar.dart';
import 'package:doorak/src/feature/auth/view/login/widgets/login_info_card.dart';
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
                      Text(
                        AppText.loginInfoEN,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).primaryTextTheme.titleMedium,
                      ),
                      SizedBox(height: 20.h),
                      LoginInfoCard(
                        passwordController: passwordController,
                        emailController: emailController,
                      ),
                      SizedBox(height: 30.h),
                      BlocConsumer<AuthCubit, Auth>(
                        listener: (context, state) {
                          if (state is SignupSuccess) {
                            CustomSnackBar.show(
                                context, "تم تسجيل الدخول بنجاح");
                            context.pushReplacement(
                              pushReplacement:
                                  const CustomCurvedNavigationBar(),
                            );
                          } else if (state is SignupError) {
                            CustomSnackBar.show(context, state.message,
                                isError: true);
                          }
                        },
                        builder: (context, state) {
                          if (state is SignupLoading) {
                            return const CircularProgressIndicator();
                          }
                          return CustomButtomLight(
                            horizontal: 17,
                            text: AppText.loginEN,
                            onPressed: () {
                              context.read<AuthCubit>().login(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                            },
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
                      ),
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
