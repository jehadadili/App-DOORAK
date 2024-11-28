import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/feature/branch/presntation/view/screen/branch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCorporateShowcaseDesign extends StatelessWidget {
  const CustomCorporateShowcaseDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.pushWidget(push: const BranchScreen());
          },
          child: Image.asset(
            ImageApp.image,
            width: MediaQuery.of(context).size.width * .90,
            height: 110.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Divider(
            color: ColorApp.primarycolor,
            height: 5.h,
            thickness: 3,
          ),
        )
      ],
    );
  }
}
