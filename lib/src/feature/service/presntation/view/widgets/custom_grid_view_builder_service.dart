import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/service/presntation/view/widgets/custom_service_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderService extends StatefulWidget {
  const CustomGridViewBuilderService({super.key});

  @override
  State<CustomGridViewBuilderService> createState() =>
      _CustomGridViewBuilderServiceState();
}

class _CustomGridViewBuilderServiceState
    extends State<CustomGridViewBuilderService> {
  List<BranchModel> list = [
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 27.0), // المسافة من الأطراف
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11, // المسافة بين الأعمدة
            mainAxisSpacing: 11, // المسافة بين الصفوف
            childAspectRatio: 165 / 106, // النسبة بين العرض والطول
          ),
          itemCount: list.length, // استخدام طول القائمة هنا
          itemBuilder: (context, index) {
            return CustomServiceDesign(
              branchModel: list[index],
            );
          },
        ),
      ),
    );
  }
}
