import 'package:doorak/src/feature/splash_screen/screen/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDoorak extends StatelessWidget {
  const AppDoorak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          theme: ThemeData(
            fontFamily: "Lato",
          ),
        );
      },
      child: const SplachScreen(),
    );
  }
}
