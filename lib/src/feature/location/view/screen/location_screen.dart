import 'package:doorak/src/core/style/image/image_app.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          ImageApp.map,
          fit: BoxFit.cover, // لجعل الصورة تغطي الشاشة بالكامل
        ),
      ),
    );
  }
}
