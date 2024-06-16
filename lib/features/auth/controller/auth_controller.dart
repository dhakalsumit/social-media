import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_media/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider((ref) {
  return AuthController(authRepository: ref.read(authRepositoryProvider));
});

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  void signInWithgoogle() {
    _authRepository.signInWithGoogle();
  }
}
