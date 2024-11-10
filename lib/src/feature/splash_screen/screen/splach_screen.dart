import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/feature/language/screen/language_screen.dart';
import 'package:doorak/src/feature/splash_screen/widgets/splash_screen_content.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) {
        if (mounted) {
          context.pushReplacement(pushReplacement: const LanguageScreen());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.primarycolor,
      body: SplashScreenContent(),
    );
  }
}
