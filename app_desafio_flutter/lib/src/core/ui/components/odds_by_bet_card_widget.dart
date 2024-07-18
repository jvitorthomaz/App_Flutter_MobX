import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OddsByBetCardWidget extends StatelessWidget {
  final String betIMG;
  const OddsByBetCardWidget({
    super.key,
    required this.betIMG,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 30, left: 15, right: 15),
      padding: EdgeInsets.only(top: 20,bottom: 10, left: 10, right: 10),
      height: 330,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(192, 196, 194, 1),

        borderRadius: BorderRadius.circular(25.0),

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          // width: 280,
          // height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 11,
                    width: 57,
                    image: AssetImage(betIMG),
                    fit: BoxFit.cover
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 215, 10, 1),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.arrowUpRightFromSquare,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 93,
                          decoration: BoxDecoration(
                            color: Colors.black,
        
                            borderRadius: BorderRadius.circular(60.0),
        
                          ),
                          child: const Center(
                            child: Text(
                              'ODD MAIS ALTA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Ambos os times marcarão',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                      ],
                    ),
                    const Text(
                      '3.10',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                ],
              ),
              Divider(thickness: 1,color: Colors.grey.shade600,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'São Paulo marcará o \nprimeiro gol',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2.61',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Divider(thickness: 1,color: Colors.grey.shade600,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mais de 4 Gols',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2.12',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
        
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
