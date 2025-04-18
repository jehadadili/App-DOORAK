import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/validator/validater.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/screen/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PassWordTextField extends StatefulWidget {
  const PassWordTextField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    isVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldWidgets(
          obscureText: !isVisible,
          height: 60,
          labelText: AppText.labelPasswordEN,
          prefixIcon: const Icon(IconApp.lock),
          controller: widget.passwordController,
          hintText: AppText.hintPasswordEN,
          keyboardType: TextInputType.visiblePassword,
          validator: (password) {
            return MyValidator.passwrdValidator(password);
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: FittedBox(
            child: Row(
              children: [
                Checkbox(
                  value: isVisible,
                  onChanged: (value) {
                    isVisible = value!;
                    setState(() {});
                  },
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text(
                        AppText.rememberMeEN,
                        style: Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushWidget(
                              push: const ForgotPasswordScreen());
                        },
                        child: Text(
                          AppText.forgotPasswordEN,
                          style:
                              Theme.of(context).inputDecorationTheme.hintStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
