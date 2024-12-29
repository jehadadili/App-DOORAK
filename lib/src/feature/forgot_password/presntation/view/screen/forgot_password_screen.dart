import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/back_button_widget.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/widgets/phone_input_section.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackButtonWidget(),
            SizedBox(height: Sizes.height(context) * 0.12),
            Text(
              AppText.appName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            PhoneInputSection(),
          ],
        ),
      ),
    );
  }
}
