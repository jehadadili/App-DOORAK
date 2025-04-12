import 'package:doorak/src/feature/auth/domain/model/user_model.dart';
import 'package:doorak/src/feature/auth/domain/repository/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<void> call(UserModel user) {
    return repository.register(user); 
  }
}