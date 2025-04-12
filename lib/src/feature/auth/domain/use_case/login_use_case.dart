import 'package:doorak/src/feature/auth/domain/repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<void> call(String email, String password) {
    return repository.login(email, password); 
  }
}