import 'package:app_desafio_flutter/src/core/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:app_desafio_flutter/src/repositories/login_respository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  final LoginRepository _loginRepository;

  LoginService(this._loginRepository);

  Future<bool> loginUser() async {
    final authenticationController = getIt<AuthController>();

    try {
      final response = await _loginRepository.loginUser(authenticationController.email.text, authenticationController.password.text);
      await _saveUserLoginInfo(authenticationController.email.text, authenticationController.password.text);
      await _saveUserTokens(response.authToken, response.refreshToken);
      return true;
    } catch (e) {
      
      print("Ocorreu um erro: $e");
      return false;
    }
  }

  Future<void> _saveUserTokens(String authToken, String refreshToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('auth_token', authToken);
    await prefs.setString('refresh_token', refreshToken);
    print(authToken);
    print(refreshToken);
  }

  Future<void> _saveUserLoginInfo(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('user_email', email);
    await prefs.setString('user_password', password);
    print(email);
    print(password);
  }

}
