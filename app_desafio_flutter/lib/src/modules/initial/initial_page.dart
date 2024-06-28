import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/button_icon_wiidget.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/button_widget.dart';
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = getIt<CoreController>();

    appController.initStore();
    appController.initValues();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        height: 400,
                        width: 400,
                        image: AssetImage('assets/images/img_initial.png'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 45,
                    left: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entre',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'em sua conta',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Acompanhe seus jogos,',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        Text(
                          'campeonatos e times favoritos',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ButtonIconWidget(
                          onPressed: () {},
                          colorBackground: const Color(0xFFE6E6E6),
                          colorText: const Color(0xFF000000),
                          img: 'assets/images/g.png',
                          text: 'Entrar com Google',
                          heightIcon: 24,
                          widhtIcon: 24,
                          widhtButton: 298,
                          heightButton: 56,
                          textSize: 13,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonIconWidget(
                          onPressed: () {},
                          colorBackground: const Color(0xFF000000),
                          colorText: const Color(0xFFFFFFFF),
                          img: 'assets/images/apple.png',
                          text: 'Entrar com Apple',
                          heightIcon: 24,
                          widhtIcon: 20.22,
                          widhtButton: 298,
                          heightButton: 56,
                          textSize: 13,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 138, 138, 138),
                          height: 0.3,
                          width: 90,
                        ),
                        const Text(
                          'ou entre com',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 138, 138, 138),
                          height: 0.3,
                          width: 90,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 325,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            colorBackground: Colors.white,
                            colorText: const Color(0xFF505854),
                            text: 'Email',
                            border: true,
                            borderColor: const Color(0xFF505854),
                            widthButton: 147,
                            heightButton: 56,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            colorBackground: const Color(0xFFF5D70A),
                            colorText: const Color(0xFF282C2A),
                            text: 'Telefone',
                            border: false,
                            widthButton: 147,
                            heightButton: 56,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
