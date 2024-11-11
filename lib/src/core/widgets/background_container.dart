import 'package:flutter/material.dart';
import 'package:doorak/src/core/style/image/image_app.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageApp.splachScreen),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
