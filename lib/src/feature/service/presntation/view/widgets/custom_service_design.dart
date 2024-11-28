import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/core/widgets/my_button_container.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/date-time/presntation/view/screen/date_time_screen.dart';
import 'package:flutter/material.dart';

class CustomServiceDesign extends StatelessWidget {
  const CustomServiceDesign({super.key, required this.branchModel});
  final BranchModel branchModel;
  @override
  Widget build(BuildContext context) {
    return MyButtonContainer(
      text: branchModel.text,
      onPressed: () {
        context.pushWidget(push: const DateTimeScreen());
      },
    );
  }
}
