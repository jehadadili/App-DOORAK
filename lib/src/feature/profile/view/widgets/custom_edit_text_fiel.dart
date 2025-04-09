import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEditTextFiel extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;

  const CustomEditTextFiel({
    super.key,
    required this.emailController,
    required this.usernameController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        FittedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 160.w),
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppText.changePasswordEN,
                style: Theme.of(context).inputDecorationTheme.hintStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomButtomLight(
          text: AppText.confirmChangesEN,
          horizontal: 17.w,
          onPressed: () {},
        )
      ],
    );
  }
}
