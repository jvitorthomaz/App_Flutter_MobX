
import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class BonusWidget extends StatelessWidget {
  BonusWidget({super.key});

  final homeController = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 25, 30, 15),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Principais bônus de aposta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          // SizedBox(
          //   height: 200,
          //   // child: Column(
          //   //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   //   children: [
          //   //     CardBonusWidget(
          //   //       img: 'assets/images/stake.png',
          //   //       title:
          //   //           homeController.coreController.listBonus[0].platform,
          //   //     ),
          //   //     CardBonusWidget(
          //   //       img: 'assets/images/bet365.png',
          //   //       title:homeController.coreController.listBonus[1].platform,
          //   //     )
          //   //   ],
          //   // ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Acompanhe todas as partidas',
                style: TextStyle(
                    color: Color(0xFF505854),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xFFF5D70A)),
                ),
                child: const Image(
                  height: 16,
                  width: 21,
                  image: AssetImage('assets/images/arrow_right.png'),
                  fit: BoxFit.cover
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
