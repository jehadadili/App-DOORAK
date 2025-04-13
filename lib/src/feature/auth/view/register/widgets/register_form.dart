import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/auth/view/register/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/widgets/no.account_section.dart';
import 'package:doorak/src/feature/auth/view/login/screen/login_screen.dart';
import 'package:doorak/src/feature/auth/view/register/widgets/register_info_card.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
    return Container(
      width: Sizes.width(context),
      padding: EdgeInsets.symmetric(vertical: 20.h),
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
          SizedBox(height: 20.h),
          RegisterButton(
            emailController: emailController,
            usernameController: usernameController,
            passwordController: passwordController,
            confirmpasswordController: confirmpasswordController,
          ),
          SizedBox(height: 15.h),
          NoAccountSection(
            text1: AppText.alreadyAccountEN,
            text2: AppText.loginEN,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
