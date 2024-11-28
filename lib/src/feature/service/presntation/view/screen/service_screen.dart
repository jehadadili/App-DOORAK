import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/service/presntation/view/widgets/custom_grid_view_builder_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          Image.asset(
            ImageApp.image,
            width: MediaQuery.of(context).size.width * .85,
            height: 110.h,
          ),
          Text(
            AppText.chooseServiceEN,
            style: Theme.of(context).primaryTextTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomGridViewBuilderService(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
        ],
      ),
    );
  }
}
