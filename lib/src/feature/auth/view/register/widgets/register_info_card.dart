import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/validator/validater.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/auth/view/register/widgets/secure_text_field.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(AppText.createregisterEN,
              style: Theme.of(context).primaryTextTheme.titleMedium),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFieldWidgets(
            height: 60,
            labelText: AppText.labelUsernameEN,
            controller: usernameController,
            hintText: AppText.hintUsernameEN,
            keyboardType: TextInputType.name,
            validator: (name) {
              return MyValidator.nameValidator(name);
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomTextFieldWidgets(
            height: 60,
            labelText: AppText.labelemailEN,
            prefixIcon: const Icon(IconApp.email),
            controller: emailController,
            hintText: AppText.hintemailEN,
            keyboardType: TextInputType.emailAddress,
            validator: (email) {
              return MyValidator.emalValidator(email);
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
      ),
    );
  }
}
