
import 'package:app_desafio_flutter/src/core/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/components/card_match_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
      child: Column(
        children: [
          CardMatchWidget(isMatchPage: false, img_a: homeController.coreController.listMatch[0].teamAImage, img_b: homeController.coreController.listMatch[0].teamBImage, team_a: homeController.coreController.listMatch[0].teamA, team_b: homeController.coreController.listMatch[0].teamB, bet: homeController.coreController.listMatch[0].odds1xbet.toString(), betsafe: homeController.coreController.listMatch[0].oddsBetsafe.toString(), betsson: homeController.coreController.listMatch[0].oddsBetsson.toString(), id: 0,),
          CardMatchWidget(isMatchPage: false, img_a: homeController.coreController.listMatch[1].teamAImage, img_b: homeController.coreController.listMatch[1].teamBImage, team_a: homeController.coreController.listMatch[1].teamA, team_b: homeController.coreController.listMatch[1].teamB, bet: homeController.coreController.listMatch[1].odds1xbet.toString(), betsafe: homeController.coreController.listMatch[1].oddsBetsafe.toString(), betsson: homeController.coreController.listMatch[1].oddsBetsson.toString(), id: 1,),
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
