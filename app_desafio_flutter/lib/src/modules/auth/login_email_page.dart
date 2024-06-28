import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/form_widget.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:flutter/material.dart';

class LoginEmailPage extends StatefulWidget {
  const LoginEmailPage({super.key});

  @override
  State<LoginEmailPage> createState() => _LoginEmailPageState();
}

class _LoginEmailPageState extends State<LoginEmailPage> {
  final authenticationController = getIt<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 250,
          margin: const EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 19.97,
                      height: 20.51,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/arrow_left.png'),
                          fit: BoxFit
                              .contain,
                        ),
                      ),
                    ),
                  )
                  ),


              FormWidget(
                object: authenticationController.email,
                keybord: authenticationController.keyboardEmail,
                title: 'Qual o seu e-mail?',
                onPressed: () {
                  Navigator.pushNamed(context, '/login_password');
                },
              ),



            ],
          ),
        ),
      ),
    );
  }
}
