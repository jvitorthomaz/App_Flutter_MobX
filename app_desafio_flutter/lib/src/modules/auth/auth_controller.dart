import 'package:app_desafio_flutter/src/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final LoginService _loginService;
  
  _AuthControllerBase(this._loginService);

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();

  @observable
  bool isObscure = true;

  final keyboardEmail = TextInputType.emailAddress;

  final keyboardPassword = TextInputType.visiblePassword;

  Future<bool> loginUser() async {
    final success = await _loginService.loginUser();
    return success;
  }

}
