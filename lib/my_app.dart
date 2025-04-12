import 'package:doorak/src/core/them/them_cubit/theme_cubit.dart';
import 'package:doorak/src/feature/auth/data/auth_remot_data_source/auth_remote_data_source.dart';
import 'package:doorak/src/feature/auth/data/auth_remot_data_source/auth_remote_data_source_impl.dart';
import 'package:doorak/src/feature/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:doorak/src/feature/auth/domain/repository/auth_repository.dart';
import 'package:doorak/src/feature/auth/domain/use_case/login_use_case.dart';
import 'package:doorak/src/feature/auth/domain/use_case/register_use_case.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/cubit.dart';
import 'package:doorak/src/feature/splash_screen/screen/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // إضافة استيراد Supabase

class AppDoorak extends StatelessWidget {
  final SupabaseClient supabaseClient; // إضافة خاصية supabaseClient
  
  const AppDoorak({super.key, required this.supabaseClient}); // تعديل البناء لاستقبال supabaseClient

  @override
  Widget build(BuildContext context) {
    // إنشاء طبقات التبعية
    final AuthRemoteDataSource remoteDataSource = AuthRemoteDataSourceImpl(supabaseClient);
    final AuthRepository repository = AuthRepositoryImpl(remoteDataSource);
    final loginUseCase = LoginUseCase(repository);
    final registerUseCase = RegisterUseCase(repository);

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
              create: (context) => AuthCubit(loginUseCase, registerUseCase),
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