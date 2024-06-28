import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController object;
  final TextInputType keyboard;

  const InputFieldWidget({
    super.key, 
    required this.object, 
    required this.keyboard
  });

  @override
  Widget build(BuildContext context) {
    final _authController = getIt<AuthController>();

    return TextFormField(
      obscureText: keyboard == TextInputType.emailAddress
          ? false
          : _authController.isObscure,
      cursorColor: Color.fromRGBO(109, 109, 109, 1),
      keyboardType: keyboard,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(109, 109, 109, 1)),
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        hintText: keyboard == TextInputType.emailAddress
            ? 'name@email.com'
            : 'password',
        labelStyle: const TextStyle(
          color: Color.fromRGBO(109, 109, 109, 1),
          fontSize: 25,
        ),
      ),
      controller: object,
      style: const TextStyle(
        color: Color.fromRGBO(109, 109, 109, 1),
      ),
      textAlign: TextAlign.start,
    );
  }
}
