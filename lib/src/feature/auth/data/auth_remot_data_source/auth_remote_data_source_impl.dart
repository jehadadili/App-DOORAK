import 'dart:developer';
import 'package:doorak/src/feature/auth/data/auth_remot_data_source/auth_remote_data_source.dart';
import 'package:doorak/src/feature/auth/domain/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<void> login(String email, String password) async {
    try {
      final response = await supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      // في الإصدارات الحديثة من Supabase، استخدم session للتحقق من نجاح العملية
      if (response.session == null) {
        throw Exception('Login failed: No session returned');
      }

      log('Logged in as ${response.user?.email}');
    } catch (e) {
      log('Error logging in: $e');
      throw Exception('Error logging in: $e');
    }
  }

  @override
  Future<void> register(UserModel user) async {
    try {
      // تصحيح استدعاء signUp باستخدام المعلمات المسماة
      final response = await supabaseClient.auth.signUp(
          email: user.email,
          password: user.password,
          data: {'username': user.username});

      // التحقق من نجاح التسجيل
      if (response.session == null && response.user == null) {
        throw Exception('Registration failed: No user or session returned');
      }

      log('User registered: ${user.email}');
    } catch (e) {
      log('Error registering user: $e');
      throw Exception('Error registering user: $e');
    }
  }
}
