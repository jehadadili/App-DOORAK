import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/auth/presntation/view/register/widgets/secure_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterInfoCard extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;

  const RegisterInfoCard(
      {super.key,
      required this.emailController,
      required this.passwordController,
      required this.usernameController,
      required this.confirmpasswordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(AppText.createregisterEN,
            style: Theme.of(context).primaryTextTheme.titleMedium),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomTextFieldWidgets(
            height: 40,
            labelText: AppText.labelUsernameEN,
            controller: usernameController,
            hintText: AppText.hintUsernameEN,
            keyboardType: TextInputType.phone,
            validator: (p0) {
              return null;
            },
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
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
        SizedBox(
          height: 8.h,
        ),
        SecureTextField(
          passwordController: passwordController,
          confirmpasswordController: confirmpasswordController,
        ),
      ],
    );
  }
}
