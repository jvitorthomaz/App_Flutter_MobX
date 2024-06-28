
import 'package:app_desafio_flutter/src/modules/home/widgets/banner_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/bonus_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/championship_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/last_bet_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/match_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/widgets/tip_section.dart';
import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BannerWidget(),
        ChampionshipWidget(),
        const MatchWidget(),
        TipWidget(),
        BonusWidget(),
        const LastBetWidget(),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          child: SizedBox(
            height: 125,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                height: 36,
                width: 143,
                image: AssetImage('assets/images/empire.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
