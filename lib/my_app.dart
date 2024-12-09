import 'package:device_preview/device_preview.dart';
import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:doorak/src/feature/splash_screen/screen/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDoorak extends StatelessWidget {
  const AppDoorak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
            create: (context) => ThemeCubit(),
            child: BlocBuilder<ThemeCubit, Themestate>(
              builder: (context, state) {
                return MaterialApp(
                   useInheritedMediaQuery: true,
                  locale: DevicePreview.locale(context),
                  builder: DevicePreview.appBuilder,
                  
                  debugShowCheckedModeBanner: false,
                  home: child,
                  theme: context.read<ThemeCubit>().themedata,
                
                  
                );
              },
            ));
      },
      child: const SplachScreen(),
    );
  }
}
