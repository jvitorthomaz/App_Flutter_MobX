import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/card_bet.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LastBetWidget extends StatelessWidget {
  const LastBetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return SizedBox(
      height: 200,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/images/noto_fire.png'),
                      fit: BoxFit.cover),
                  Text(
                    'Últimas apostas ganhas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // CarouselSlider(
            //     items: 
            //     homeController.coreController.listWonBets.map((bet) {
            //         return CardBet(
            //           img: bet.userAvatar,
            //           name: bet.user,
            //           description: bet.platform,
            //           teams: '',
            //           time: '',
            //           value: bet.score.toString(),
            //           avatar: bet.userAvatar);
            //     }).toList(),
            //     options: CarouselOptions(
            //         height: 92,
            //         enlargeCenterPage: false,
            //         enableInfiniteScroll: false,
            //         viewportFraction: 0.9,
            //         padEnds: false
            //     )
            // )
          ],
        ),
      ),
    );
  }
}
