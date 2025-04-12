import 'package:doorak/src/feature/auth/domain/model/user_model.dart';

abstract class AuthRepository {
  // واجهة تحتوي على العمليات الأساسية للتسجيل وتسجيل الدخول
  Future<void> login(String email, String password);
  Future<void> register(UserModel user); // نمرر الكائن UserModel مع الـ id
}