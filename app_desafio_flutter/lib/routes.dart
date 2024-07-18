import 'package:app_desafio_flutter/src/modules/auth/login_email_page.dart';
import 'package:app_desafio_flutter/src/modules/auth/login_password_page.dart';
import 'package:app_desafio_flutter/src/modules/home/home_page.dart';
import 'package:app_desafio_flutter/src/modules/initial/initial_page.dart';
import 'package:app_desafio_flutter/src/modules/match/match_page.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/odds_mais_altas_widget.dart';
import 'package:app_desafio_flutter/src/modules/match/widgets/outras_odds_widget.dart';
import 'package:app_desafio_flutter/src/modules/sports/sports_page.dart';
import 'package:flutter/material.dart';

class Routes {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const InitialPage(),
    '/login_email': (_) => const LoginEmailPage(),
    '/login_password': (_) => const LoginPasswordPage(),
    '/home': (_) => const HomePage(),
    '/sports': (_) => SportsPage(),
    '/match': (_) => const MatchPage(),
    '/odds_mais_altas': (_) => OddsMaisAltasWidget(),
    '/outras_odds': (_) => OutrasOddsWidget(),
  };
}