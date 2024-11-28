import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/feature/branch/domain/model/branch_model.dart';
import 'package:doorak/src/feature/branch/presntation/view/widgets/custom_branch_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderBranch extends StatefulWidget {
  const CustomGridViewBuilderBranch({super.key});

  @override
  State<CustomGridViewBuilderBranch> createState() =>
      _CustomGridViewBuilderBranchState();
}

class _CustomGridViewBuilderBranchState
    extends State<CustomGridViewBuilderBranch> {
  List<BranchModel> list = [
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
            return CustomBranchDesign(
              branchModel: list[index],
            );
          },
        ),
      ),
    );
  }
}
