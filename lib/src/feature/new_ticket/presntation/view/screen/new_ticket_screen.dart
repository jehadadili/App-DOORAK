import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/new_ticket/presntation/view/widgets/custom_grid_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTicketScreen extends StatelessWidget {
  const NewTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
          ),
          Center(
            child: Text(
              AppText.chooseEntityEN,
              style: Theme.of(context).primaryTextTheme.displayLarge,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomGridViewBuilder(),
          SizedBox(
            height: 10.h, // الفراغ بين الـ List وأسفل الشاشة
          ),
        ],
      ),
    );
  }
}
