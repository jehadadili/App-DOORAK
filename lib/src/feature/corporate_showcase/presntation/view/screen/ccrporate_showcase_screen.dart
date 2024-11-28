import 'package:doorak/src/core/widgets/custom_app_bar.dart';
import 'package:doorak/src/feature/corporate_showcase/presntation/view/widgets/custom_list_view_builder_corporate_showcase.dart';
import 'package:flutter/material.dart';

class CcrporateShowcaseScreen extends StatelessWidget {
  const CcrporateShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          const CustomGridViewBuilderCorporateShowcase(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
        ],
      ),
    );
  }
}
