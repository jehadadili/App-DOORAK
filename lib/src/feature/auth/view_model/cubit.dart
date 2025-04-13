import 'dart:developer';

import 'package:doorak/src/feature/auth/view_model/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthCubit extends Cubit<Auth> {
  SupabaseClient client = Supabase.instance.client;

  AuthCubit() : super(AuthInitial());

  void login({required String email,required String password}) async {
    emit(SignupLoading());
    try {
      await client.auth.signInWithPassword(password: password, email: email);
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupError("Login Failed: ${e.toString()}"));
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(SignupLoading());

    if (password != confirmPassword) {
      emit(SignupError("كلمة المرور وتأكيدها غير متطابقتين"));
      return;
    }

    try {
      await client.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );
      emit(SignupSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(SignupError(e.message));
    } catch (e) {
      log(e.toString());
      emit(SignupError(e.toString()));
    }
  }
}
