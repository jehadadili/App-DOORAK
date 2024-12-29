import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/back_button_widget.dart';
import 'package:doorak/src/feature/forgot_password/presntation/view/widgets/change_password/presntation/view/widgets/custom_design_change_password.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackButtonWidget(),
            SizedBox(height: Sizes.height(context) * 0.1),
            Text(
              AppText.appName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            CustomDesignChangePassword(
              confirmpasswordController: confirmpasswordController,
              passwordController: passwordController,
            )
          ],
        ),
      ),
    );
  }
}
