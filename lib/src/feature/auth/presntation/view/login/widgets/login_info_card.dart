import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInfoCard extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginInfoCard(
      {super.key,
      required this.emailController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
        children: [
          CustomTextFieldWidgets(
            height: 40,
            labelText: AppText.labelemailEN,
            prefixIcon: const Icon(IconApp.email),
            controller: emailController,
            hintText: AppText.hintemailEN,
            keyboardType: TextInputType.emailAddress,
            validator: (p0) {
              return null;
            },
          ),
          SizedBox(height: 8.h),
          PassWordTextField(
            passwordController: passwordController,
          ),
        ],
      ),
    );
  }
}
