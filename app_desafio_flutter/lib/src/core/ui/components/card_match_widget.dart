
import 'package:app_desafio_flutter/src/core/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/components/bet_field_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/team_info_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class CardMatchWidget extends StatelessWidget {
  bool isMatchPage;
  final String img_a;
  final String team_a;
  final String img_b;
  final String team_b;
  final String bet;
  final String betsafe;
  final String betsson;
  final int id;

  CardMatchWidget({
    super.key,
    required this.isMatchPage,
    required this.img_a,
    required this.img_b,
    required this.team_a,
    required this.team_b,
    required this.bet,
    required this.betsafe,
    required this.betsson,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 400,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(20, 0, 0, 0).withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TeamInfoWidget(
                img: img_a,
                name: team_a,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Stack(
                      children: [
                        const Text('Ao vivo'),
                        Positioned(
                          bottom: 35,
                          right: 0,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: const Color(0xFFDEE0DF),
                        width: 1,
                      ),
                      color: Colors.transparent,
                    ),
                    child: const Center(child: Text("60")),
                  ),
                ],
              ),
              TeamInfoWidget(
                img: img_b,
                name: team_b,
              )
            ],
          ),
          const SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  ':',
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(131, 0, 0, 0)),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          //widget percentage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BetFieldWidget(
                  title: 'Casa',
                  img: 'assets/images/bet.png',
                  value: bet,
                  widthImg: 60,
                  heightImg: 21
              ),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              BetFieldWidget(
                  title: 'x',
                  img: 'assets/images/betsafe.png',
                  value: betsafe,
                  widthImg: 67,
                  heightImg: 16),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              BetFieldWidget(
                  title: 'Fora',
                  img: 'assets/images/betsson.png',
                  value: betsson,
                  widthImg: 52,
                  heightImg: 11),
            ],
          ),

          isMatchPage == false
              ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 138, 138, 138),
                    height: 0.3,
                    width: 300,
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      
                      homeController.coreController.setMatch(homeController.coreController.listMatch[id]);
                      Navigator.pushNamed(context, '/match');
                    },
                    child: const Text('Ver mais')
                  ),
                ],
              )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
