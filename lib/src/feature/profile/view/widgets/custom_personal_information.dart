import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_edit_text_fiel.dart';
import 'package:doorak/src/feature/profile/view/widgets/custom_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomPersonalInformation extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  const CustomPersonalInformation({
    super.key,
    required this.emailController,
    required this.usernameController,
  });

  @override
  Widget build(BuildContext context) {
    final String currentDate =
        DateFormat('EEEE, dd MMM, yyyy').format(DateTime.now());

    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        const CustomSectionTitle(
            title: "Personal Information", icon: Icons.edit),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: CircleAvatar(
            radius: 50.r,
            child: CircleAvatar(
              radius: 48.r,
              backgroundImage: const NetworkImage(
                  "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="),
            ),
          ),
        ),
        SizedBox(height: 3.h),

        Text(
          "User Name",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorApp.primarycolor,
              ),
        ),
        SizedBox(height: 5.h),
        // التاريخ الحالي
        Text(
          currentDate,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: ColorApp.blue,
              ),
        ),

        SizedBox(height: 10.h),
        CustomEditTextFiel(
          emailController: emailController,
          usernameController: usernameController,
        )
      ],
    );
  }
}
