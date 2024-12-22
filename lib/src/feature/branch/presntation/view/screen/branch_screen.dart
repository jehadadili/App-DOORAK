import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/size/app_size.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/branch/presntation/view/widgets/custom_grid_view_builder_branch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchScreen extends StatelessWidget {
  const BranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Sizes.height(context) * 0.01),
            Image.asset(
              ImageApp.image,
              width: MediaQuery.of(context).size.width * 0.85,
              height: 110.h,
            ),

            Text(
              AppText.chooseBranchEN,
              style: Theme.of(context).primaryTextTheme.displayLarge,
            ),
            SizedBox(height: 20.h), // تباعد آخر

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: CustomGridViewBuilderBranch(),
              ),
            ),
            SizedBox(
              height: Sizes.height(context) * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
