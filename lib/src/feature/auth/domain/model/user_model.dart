class UserModel {
  final String id; // معرّف المستخدم
  final String username;
  final String email;
  final String password;

  UserModel({
    required this.id, // عند إنشاء مستخدم جديد، نمرر معرّف فريد
    required this.username,
    required this.email,
    required this.password,
  });
}