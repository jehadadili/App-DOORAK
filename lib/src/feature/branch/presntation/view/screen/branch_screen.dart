import 'package:doorak/src/core/style/image/image_app.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h), // تباعد علوي صغير
              Image.asset(
                ImageApp.image,
                width: MediaQuery.of(context).size.width * 0.85,
                height: 110.h,
              ),
              SizedBox(height: 20.h), // تباعد بين العناصر
              Text(
                AppText.chooseBranchEN,
                style: Theme.of(context).primaryTextTheme.displayLarge,
              ),
              SizedBox(height: 30.h), // تباعد آخر
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.6,
                ),
                child: CustomGridViewBuilderBranch(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}