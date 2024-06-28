import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/card_championship_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChampionshipWidget extends StatelessWidget {
  ChampionshipWidget({super.key});

  final homeController = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Campeonatos populares',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 10,),
          // CarouselSlider(
          //     items: homeController.coreController.listChampionships.map((championship) {
          //           return CardChampionship(img: championship.image);
          //     }).toList(),
          //   options: CarouselOptions(
          //     height: 80,
          //     enlargeCenterPage: false,
          //     enableInfiniteScroll: false,
          //     viewportFraction: 0.25,
          //     padEnds: false
          //   )
          // )
        ],
      ),
    );
  }
}
