import 'package:doorak/src/core/extension/extension_navgter.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/service/presntation/view/screen/service_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/my_button_container.dart';

class CustomBranchDesign extends StatelessWidget {
  const CustomBranchDesign({
    super.key,
    required this.branchModel,
  });

  final BranchModel branchModel;
  @override
  Widget build(BuildContext context) {
    return MyButtonContainer(
      text: branchModel.text,
      onPressed: () {
        context.pushWidget(push: const ServiceScreen());
      },
    );
  }
}
