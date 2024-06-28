import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class TipWidget extends StatelessWidget {
  TipWidget({super.key});

  final homeController = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 45, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dicas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      'Ver todas',
                      style: TextStyle(fontSize: 14),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // CarouselSlider(
          //   items: homeController.coreController.listTips.map((tip) {
          //     return CardTipWidget(
          //       img: tip.image, description: tip.description, title: tip.title,
          //     );
          //   }).toList(),
          //   options: CarouselOptions(
          //       height: 340,
          //       enlargeCenterPage: false,
          //       enableInfiniteScroll: false,
          //       viewportFraction: 0.8,
          //       padEnds: false),
          // ),
        ],
      ),
    );
  }
}
