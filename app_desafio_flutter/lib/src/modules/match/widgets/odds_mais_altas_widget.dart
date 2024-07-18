import 'package:app_desafio_flutter/src/core/ui/components/bet_field_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/button_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/components/odds_card_widget.dart';
import 'package:flutter/material.dart';

class OddsMaisAltasWidget extends StatelessWidget {
const OddsMaisAltasWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(222, 224, 223, 1),),
      body: Container(
        //margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
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
                        SizedBox(width: 20,),
                        ButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, '/odds_mais_altas');
                          },
                          colorBackground: Colors.black,
                          colorText: Colors.white,
                          text: 'Odds mais altas',
                          border: false,
                          widthButton: 155,
                          heightButton: 47
                        ),
                        SizedBox(width: 10,),
                        ButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, '/outras_odds');
                          },
                          colorBackground: const Color.fromRGBO(222, 224, 223, 1),
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
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                padding: EdgeInsets.only(bottom: 10),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(192, 196, 194, 1),

                  borderRadius: BorderRadius.circular(25.0),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: const Color.fromARGB(20, 0, 0, 0).withOpacity(0.15),
                  //     spreadRadius: 0.1,
                  //     blurRadius: 15,
                  //     offset: const Offset(0, 0),
                  //   ),
                  // ],
                ),
                child: SizedBox(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const BetFieldWidget(
                        title: '',
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
                        title: '',
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
                        title: '',
                        img: 'assets/images/betsson.png',
                        value: '3.4',
                        widthImg: 52,
                        heightImg: 11
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(child: OddsCardWidget(),)
            ],
          ),
        ]
        ),
        
      ),
    );
  }
}