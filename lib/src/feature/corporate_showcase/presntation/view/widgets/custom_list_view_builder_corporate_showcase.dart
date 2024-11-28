import 'package:doorak/src/feature/corporate_showcase/presntation/view/widgets/custom_corporate_showcase_design.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilderCorporateShowcase extends StatelessWidget {
  const CustomGridViewBuilderCorporateShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const CustomCorporateShowcaseDesign();
        },
      ),
    );
  }
}
