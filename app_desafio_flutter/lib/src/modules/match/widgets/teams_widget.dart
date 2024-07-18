
import 'package:app_desafio_flutter/src/core/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/components/card_match_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class TeamsWidget extends StatelessWidget {
  const TeamsWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      height: 800,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.75, 1],
          colors: [
            Colors.white,
            Color.fromARGB(30, 245, 214, 10),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 0, right: 20, top: 45),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: const Color(0xFFF5D70A),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Image(
                      height: 14,
                      width: 8,
                      image: AssetImage('assets/images/arrow.png'),
                      fit: BoxFit.cover),
                ),
                const Text(
                  'Partida',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          CardMatchWidget(
            isMatchPage: true,
            img_a: homeController.coreController.listMatch[0].teamAImage,
            img_b: homeController.coreController.listMatch[0].teamBImage,
            team_a: homeController.coreController.listMatch[0].teamA,
            team_b: homeController.coreController.listMatch[0].teamB,
            bet: homeController.coreController.listMatch[0].odds1xbet.toString(),
            betsafe: homeController.coreController.listMatch[0].oddsBetsafe.toString(),
            betsson: homeController.coreController.listMatch[0].oddsBetsson.toString(),
            id: 0 //homeController.coreController.listMatch[0].id,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const Image(
                height: 262,
                width: 379,
                image: AssetImage('assets/images/soccer_pitch.png'),
                fit: BoxFit.cover
              ),
              Positioned(
                top: 65,
                left: 45,
                child: Container(
                  height: 50,
                  width: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDEE0DF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1.0,
                    ),
                  ),
                  child: const ClipOval(
                    child: Image(
                        height: 32,
                        width: 32,
                        image: AssetImage('assets/images/sp.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: 65,
                right: 45,
                child: Container(
                  height: 50,
                  width: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDEE0DF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1.0,
                    ),
                  ),
                  child: const ClipOval(
                    child: Image(
                        height: 32,
                        width: 32,
                        image: AssetImage('assets/images/palmeiras.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
