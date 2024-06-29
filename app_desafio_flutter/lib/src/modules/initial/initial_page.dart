import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/constants.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/button_icon_wiidget.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/button_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/divider_widget.dart';
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = getIt<CoreController>();

    //appController.initStore();
    appController.initValues();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child:  Image(
                        height: 400,
                        width: 400,
                        image: AssetImage('assets/images/img_initial.png'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 45,
                    left: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entre\nem sua conta',
                          style: TextStyle(
                            color: AppColors.colorWhite,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Acompanhe seus jogos,\ncampeonatos e times favoritos',
                          style: TextStyle(color: AppColors.colorWhite, fontSize: 13, fontWeight: FontWeight.w400),
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
                          colorBackground: AppColors.lightGrey,
                          colorText: AppColors.colorBlack,
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
                          colorBackground: AppColors.colorBlack,
                          colorText: AppColors.colorWhite,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DividerWidget(),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'ou entre com',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          DividerWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 325,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login_email');
                            },
                            colorBackground: AppColors.colorWhite,
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
