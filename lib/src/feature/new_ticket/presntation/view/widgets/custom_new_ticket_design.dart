import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/feature/corporate_showcase/presntation/view/screen/ccrporate_showcase_screen.dart';
import 'package:doorak/src/feature/new_ticket/domain/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNewTicketDesign extends StatelessWidget {
  const CustomNewTicketDesign({super.key, required this.homeModel});
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushWidget(push: const CcrporateShowcaseScreen());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              homeModel.image,
              color: Theme.of(context).colorScheme.surfaceContainerLow,
            ),
            SizedBox(height: 10.h),
            Text(
              homeModel.text,
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
