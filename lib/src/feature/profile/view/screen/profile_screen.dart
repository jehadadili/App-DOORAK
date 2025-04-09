import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_personal_information.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({
    super.key,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                Container(
                  height: 400.h,
                  color: Theme.of(context).cardColor,
                  child: CustomPersonalInformation(
                    emailController: emailController,
                    usernameController: usernameController,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    height: 250.h,
                    color: Theme.of(context).cardColor,
                    child: const CustomSetting()),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
              ],
            ),
          ),
        ));
  }
}
