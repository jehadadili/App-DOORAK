import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/feature/auth/view/login/widgets/login_info_card.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Login Information',
            textAlign: TextAlign.center,
            style: Theme.of(context).primaryTextTheme.titleMedium,
          ),
          SizedBox(height: 20.h),
          LoginInfoCard(
            passwordController: passwordController,
            emailController: emailController,
          ),
        ],
      ),
    );
  }
}
