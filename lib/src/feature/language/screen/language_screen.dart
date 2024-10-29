import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/text_styles/text_styles.dart';
import 'package:doorak/src/core/widgets/background_container.dart';
import 'package:doorak/src/feature/auth/presntation/view/login/screen/login_screen.dart';
import 'package:doorak/src/feature/language/widgets/circular_arrow_button.dart';
import 'package:doorak/src/feature/language/widgets/language_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedLanguage = "English";

  void _onLanguageSelected(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Text(
              "Dorak",
              style: TextStyles.p96,
            ),
            SizedBox(height: 71.h),
            LanguageOption(
              language: "English",
              onTap: () => _onLanguageSelected("English"),
              isSelected: selectedLanguage == "English",
            ),
            SizedBox(height: 15.h),
            LanguageOption(
              language: "العربية",
              onTap: () => _onLanguageSelected("العربية"),
              isSelected: selectedLanguage == "العربية",
            ),
            const Spacer(),
            CircularArrowButton(
              onPressed: () {
                context.pushReplacement(pushReplacement: const LoginScreen());
              },
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
