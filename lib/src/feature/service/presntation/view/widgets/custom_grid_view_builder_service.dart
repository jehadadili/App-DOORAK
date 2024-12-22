import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/service/presntation/view/widgets/custom_service_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderService extends StatelessWidget {
  final List<BranchModel> list = [
    BranchModel(text: AppText.service1EN),
    BranchModel(text: AppText.service2EN),
    BranchModel(text: AppText.service3EN),
    BranchModel(text: AppText.service4EN),
    BranchModel(text: AppText.service5EN),
    BranchModel(text: AppText.service6EN),
    BranchModel(text: AppText.service7EN),
    BranchModel(text: AppText.service8EN),
    BranchModel(text: AppText.service9EN),
    BranchModel(text: AppText.service10EN),
  ];

  CustomGridViewBuilderService({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(), // تمكين التمرير
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        childAspectRatio: 165 / 106,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CustomServiceDesign(
          branchModel: list[index],
        );
      },
    );
  }
}
