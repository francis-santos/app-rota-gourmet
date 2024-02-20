import 'package:rota_gourmet/features/auth/application/auth_service.dart';

class MockAuthService implements AuthService {
  @override
  Future<bool> signIn(String email, String password) async {
    // Simula a autenticação com sucesso para qualquer combinação de email e senha
    // Para testar diferentes cenários de autenticação, você pode adicionar lógica aqui
    return true;
  }
}
