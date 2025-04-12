import 'package:doorak/src/feature/auth/domain/model/user_model.dart';
import 'package:doorak/src/feature/auth/domain/use_case/login_use_case.dart';
import 'package:doorak/src/feature/auth/domain/use_case/register_use_case.dart';
import 'package:doorak/src/feature/auth/presntation/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;

  AuthCubit(this.loginUseCase, this.registerUseCase) : super(AuthInitial());

  void login(String email, String password) async {
    emit(AuthLoading());
    try {
      await loginUseCase.call(email, password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure("Login Failed: ${e.toString()}"));
    }
  }

  void register(UserModel user) async {
    emit(AuthLoading());
    try {
      await registerUseCase.call(user);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure("Register Failed: ${e.toString()}"));
    }
  }
}
