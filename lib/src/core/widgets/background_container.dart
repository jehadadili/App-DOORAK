import 'package:flutter/material.dart';
import 'package:doorak/src/core/style/image/image_app.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({super.key, required this.child});

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
      child: child,
    );
  }
}
