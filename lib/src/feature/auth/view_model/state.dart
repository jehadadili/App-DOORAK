// في ملف state.dart
abstract class Auth {}

class AuthInitial extends Auth {}

final class SignupSuccess extends Auth {}

final class SignupLoading extends Auth {}

final class SignupError extends Auth {
  final String message;
  SignupError(this.message);
}
