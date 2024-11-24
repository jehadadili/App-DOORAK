import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomTextFieldWidgets(
            obscureText: !isVisible,
            height: 40,
            labelText: AppText.labelPasswordEN,
            prefixIcon: const Icon(IconApp.lock),
            controller: widget.passwordController,
            hintText: AppText.hintPhoneEN,
            keyboardType: TextInputType.phone,
            validator: (p0) {
              return null;
            },
          ),
        ),
        SizedBox(height: 6.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                        onPressed: () {},
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
