import 'package:doorak/src/feature/auth/data/auth_remot_data_source/auth_remote_data_source.dart';
import 'package:doorak/src/feature/auth/domain/model/user_model.dart';
import 'package:doorak/src/feature/auth/domain/repository/auth_repository.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }

  @override
  Future<void> register(UserModel user) {
    return remoteDataSource.register(user);
  }
}
