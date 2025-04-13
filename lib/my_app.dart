import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';

import 'package:doorak/src/feature/auth/view_model/cubit.dart';
import 'package:doorak/src/feature/splash_screen/screen/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDoorak extends StatelessWidget {
  
  const AppDoorak({super.key, }); 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit(),
            ),
          ],
          child: BlocBuilder<ThemeCubit, Themestate>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: child,
                theme: context.read<ThemeCubit>().themedata,
              );
            },
          )
        );
      },
      child: const SplachScreen(),
    );
  }
}