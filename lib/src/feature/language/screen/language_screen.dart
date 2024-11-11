import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/button/custom_buttom_light.dart';
import '../../../core/style/text/text.dart';
import '../widgets/language_option.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = "English";

  void _onLanguageSelected(String language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 6),
          Text(
            AppText.appName,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const Spacer(flex: 4),
          LanguageOption(
            language: "English",
            onTap: () => _onLanguageSelected("English"),
            isSelected: _selectedLanguage == "English",
          ),
          SizedBox(height: 15.h),
          LanguageOption(
            language: "العربية",
            onTap: () => _onLanguageSelected("العربية"),
            isSelected: _selectedLanguage == "العربية",
          ),
          const Spacer(flex: 4),
          CustomButtomLight(
            onPressed: () {
              context.pushReplacement(pushReplacement: const LoginScreen());
            },
            text: AppText.confirmEN,
            horizontal: 42,
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}
