import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/validator/validater.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/style/icon/icon_app.dart';

class SecureTextField extends StatefulWidget {
  const SecureTextField({
    super.key,
    required this.passwordController,
    required this.confirmpasswordController,
  });
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;
  @override
  State<SecureTextField> createState() => _SecureTextFieldState();
}

class _SecureTextFieldState extends State<SecureTextField> {
  bool isVisible = true;
  bool isVisiblec = true;
  @override
  void initState() {
    super.initState();
    isVisible = false;
    isVisiblec = false;
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
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon: isVisible
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomTextFieldWidgets(
          obscureText: !isVisiblec,
          height: 60,
          labelText: AppText.confirmChangesEN,
          prefixIcon: const Icon(IconApp.lock),
          controller: widget.confirmpasswordController,
          hintText: AppText.confirmChangesEN,
          keyboardType: TextInputType.visiblePassword,
          validator: (password) {
            return MyValidator.passwrdValidator(password);
          },
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisiblec = !isVisiblec;
              });
            },
            icon: isVisiblec
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
        ),
      ],
    );
  }
}
