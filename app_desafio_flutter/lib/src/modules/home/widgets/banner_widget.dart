import 'package:app_desafio_flutter/src/modules/home/widgets/card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: CarouselSlider(
        items: const [
          CardWidget(
            img: 'assets/images/image4.png',
            title: 'Campeonatos populares',
            color: Color(0xFFF5D70A),
            subtitle: '',
            isLeague: false,
          ),
          CardWidget(
            img: 'assets/images/nba.png',
            title: 'NBA',
            color: Color(0xFFC0C4C2),
            subtitle: 'National Basketball Association',
            isLeague: false,
          ),
          CardWidget(
            img: 'assets/images/redbull.png',
            title: 'League of its Own',
            color: Color.fromARGB(45, 196, 178, 58),
            subtitle: '',
            isLeague: true,
          ),
        ],
        options: CarouselOptions(
          height: 191,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          viewportFraction:
              0.7,
        )
      ),
    );
  }
}
