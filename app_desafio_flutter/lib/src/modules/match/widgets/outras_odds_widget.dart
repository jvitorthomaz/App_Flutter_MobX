import 'package:app_desafio_flutter/src/core/ui/components/bet_field_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/button_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/odds_by_bet_card_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/odds_card_widget.dart';
import 'package:flutter/material.dart';

class OutrasOddsWidget extends StatelessWidget {
const OutrasOddsWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromRGBO(222, 224, 223, 1),),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(222, 224, 223, 1),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(25),
          //   topRight: Radius.circular(25),
          // ),
        ),
        child: ListView(
          
        children: [
          Column(
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20,),
                        ButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, '/odds_mais_altas');
                          },
                          colorBackground: const Color.fromRGBO(222, 224, 223, 1),
                          colorText: Colors.black,
                          text: 'Odds mais altas',
                          border: true,
                          borderColor: Colors.black,
                          widthButton: 155,
                          heightButton: 47
                        ),
                        const SizedBox(width: 10,),
                        ButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, '/outras_odds');
                          },
                          colorBackground: Colors.black,
                          colorText: Colors.white,
                          text: 'Outras Odds',
                          border: true,
                          borderColor: Colors.black,
                          widthButton: 135,
                          heightButton: 47
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 25,)
                  ],
                ),
              ),
              const SizedBox(child: OddsByBetCardWidget(betIMG: 'assets/images/bet.png',),),
              const SizedBox(child: OddsByBetCardWidget(betIMG: 'assets/images/betsafe.png',),),
              const SizedBox(child: OddsByBetCardWidget(betIMG: 'assets/images/betsson.png',),)
            ],
          ),
        ]
        ),
        
      ),
    );
    
  }
}