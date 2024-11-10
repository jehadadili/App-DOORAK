import 'package:doorak/src/core/style/button/custom_buttom_light.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:doorak/src/feature/language/widgets/language_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Text(
              AppText.appName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 56.h),
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
            SizedBox(height: 72.h),
            CustomButtomLight(
              onPressed: () {},
              text: AppText.confirmEN,
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
