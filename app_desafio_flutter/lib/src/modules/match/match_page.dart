
import 'package:app_desafio_flutter/src/core/ui/components/bet_field_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/button_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/odds_card_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/last_bet_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/confrontation_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/facts_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/infos_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/referee_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/teams_widget.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              children: [
                TeamsWidget(),
                InfosWidget(),
                FactsWidget(),
                RefereeWidget(),
                LastBetWidget(),
                ConfrontationWidget(),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.2,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5D70A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              ButtonWidget(
                                onPressed: () {},
                                colorBackground: Colors.black,
                                colorText: Colors.white,
                                text: 'Odds mais altas',
                                border: false,
                                widthButton: 155,
                                heightButton: 47
                              ),
                              SizedBox(width: 10,),
                              ButtonWidget(
                                onPressed: () {},
                                colorBackground: const Color(0xFFF5D70A),
                                colorText: const Color.fromARGB(255, 0, 0, 0),
                                text: 'Outras Odds',
                                border: true,
                                borderColor: Colors.black,
                                widthButton: 135,
                                heightButton: 47
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const BetFieldWidget(
                            title: 'Casa',
                            img: 'assets/images/bet.png',
                            value: '3.2',
                            widthImg: 60,
                            heightImg: 21
                          ),
                          Container(
                            color: const Color.fromARGB(255, 138, 138, 138),
                            height: 30,
                            width: 0.3,
                          ),
                          const BetFieldWidget(
                            title: 'x',
                            img: 'assets/images/betsafe.png',
                            value: '2.6',
                            widthImg: 67,
                            heightImg: 16
                          ),
                          Container(
                            color: const Color.fromARGB(255, 138, 138, 138),
                            height: 30,
                            width: 0.3,
                          ),
                          const BetFieldWidget(
                            title: 'Fora',
                            img: 'assets/images/betsson.png',
                            value: '3.4',
                            widthImg: 52,
                            heightImg: 11
                          ),
                        ],
                      ),
                    ),
                    SizedBox(child: OddsCardWidget(),)
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
