import 'package:app_desafio_flutter/src/core/ui/components/facts_card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FactsWidget extends StatelessWidget {
  const FactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 35, right: 35),
          child: const Text(
            'Fatos do time',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        CarouselSlider(
          items: const [
            FactsCardWidget(
              img: 'assets/images/sp.png',
              team: 'São Paulo',
            ),
            FactsCardWidget(
              img: 'assets/images/palmeiras.png',
              team: 'Palmeiras',
            ),
          ],
          options: CarouselOptions(
            height: 405,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            viewportFraction: 0.8,
            padEnds: false,
          ),
        ),
      ],
    );
  }
}
