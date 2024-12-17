import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/branch/presntation/view/widgets/custom_branch_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderBranch extends StatelessWidget {
  CustomGridViewBuilderBranch({super.key});

  final List<BranchModel> list = [
    BranchModel(text: AppText.jubeihaEN),
    BranchModel(text: AppText.seventhCircleEN),
    BranchModel(text: AppText.tajMallEN),
    BranchModel(text: AppText.dabouqEN),
    BranchModel(text: AppText.abdounEN),
    BranchModel(text: AppText.seventhCircleEN),
    BranchModel(text: AppText.jubeihaEN),
    BranchModel(text: AppText.seventhCircleEN),
    BranchModel(text: AppText.tajMallEN),
    BranchModel(text: AppText.dabouqEN),
    BranchModel(text: AppText.abdounEN),
    BranchModel(text: AppText.seventhCircleEN),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 165 / 106,
      ),
      physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير الداخلي
      shrinkWrap: true, // اجعل الشبكة تتقلص حسب الحاجة
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CustomBranchDesign(branchModel: list[index]);
      },
    );
  }
}
