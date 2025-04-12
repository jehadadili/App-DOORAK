import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/domain/model/user_model.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/cubit.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/state.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/screen/login_screen.dart';
import 'package:doorak/src/core/widgets/custom_snack_bar.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/widgets/register_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uuid/uuid.dart';

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

  bool _isPasswordsMatch() {
    return passwordController.text == confirmpasswordController.text;
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
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h),
              Text(
                AppText.appName,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 20.h),
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
                      SizedBox(height: 30.h),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthSuccess) {
                            // عند نجاح تسجيل الدخول، انتقل إلى الشاشة الرئيسية
                            _showCustomSnackBar(context,
                                state.message ?? "Reserved Successfully");
                            context.pushReplacement(
                                pushReplacement: const LoginScreen());
                          } else if (state is AuthFailure) {
                            _showCustomSnackBar(context, state.message,
                                isError: true);
                          }
                        },
                        builder: (context, state) {
                          return CustomButtomLight(
                            horizontal: 17,
                            text: AppText.loginEN,
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
                                    // التحقق من تطابق كلمة المرور
                                    if (!_isPasswordsMatch()) {
                                      _showCustomSnackBar(
                                        context,
                                        'كلمات المرور غير متطابقة',
                                        isError: true,
                                      );
                                      return;
                                    }

                                    final userId = const Uuid().v4();
                                    final user = UserModel(
                                      id: userId,
                                      username: usernameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );

                                    print("📨 Sending to register: $user");

                                    context.read<AuthCubit>().register(user);
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
                        text1: AppText.alreadyAccountEN,
                        text2: AppText.loginEN,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
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
