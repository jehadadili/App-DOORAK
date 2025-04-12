import 'package:doorak/src/feature/auth/domain/model/user_model.dart';

abstract class AuthRemoteDataSource {
  // واجهة لعمليات الاتصال مع البيانات عن بُعد (مثل Firebase)
  Future<void> login(String email, String password);
  Future<void> register(UserModel user);
}