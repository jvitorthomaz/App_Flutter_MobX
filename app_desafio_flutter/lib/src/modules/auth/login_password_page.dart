import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/form_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/loading_widget.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:flutter/material.dart';

class LoginPasswordPage extends StatelessWidget {
  const LoginPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticationController = getIt<AuthController>();

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
                          image: AssetImage('assets/images/arrow_left.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )),


              FormWidget(
                object: authenticationController.password,
                keybord: authenticationController.keyboardPassword,
                title: 'Qual sua senha?',
                onPressed: () async {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) => const LoadingWidget(),
                  );
                  if (await authenticationController.loginUser()) {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/home');
                  } else {
                    Navigator.of(context).pop();
                    print('Login error');
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
