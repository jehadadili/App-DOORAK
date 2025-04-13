import 'package:doorak/src/core/style/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/widgets/custom_snack_bar.dart';
import 'package:doorak/src/core/widgets/custom_widget_loading.dart';
import 'package:doorak/src/feature/auth/view_model/cubit.dart';
import 'package:doorak/src/feature/auth/view_model/state.dart';
import 'package:doorak/src/feature/auth/view/login/screen/login_screen.dart';

class RegisterButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;

  const RegisterButton({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.confirmpasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, Auth>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          CustomSnackBar.show(context, "تم تسجيل الدخول بنجاح");
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LoginScreen()),
          );
        } else if (state is SignupError) {
          CustomSnackBar.show(context, state.message, isError: true);
        }
      },
      builder: (context, state) {
        if (state is SignupLoading) {
          return const CustomWidgetLoading(
            color: Colors.blue,
            size: 50,
          );
        }
        return CustomButtomLight(
          horizontal: 17,
          text: AppText.registerEN,
          onPressed: () {
            context.read<AuthCubit>().register(
                  name: usernameController.text.trim(),
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                  confirmPassword: confirmpasswordController.text.trim(),
                );
          },
        );
      },
    );
  }
}
