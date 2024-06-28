import 'package:app_desafio_flutter/src/modules/home/home_page.dart';
import 'package:app_desafio_flutter/src/modules/initial/initial_page.dart';
import 'package:flutter/material.dart';

class Routes {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const InitialPage(),
    // '/login_email': (_) => const LoginEmail(),
    // '/login_password': (_) => const LoginPassword(),
    '/home': (_) => const HomePage(),
    // '/sports': (_) => SportsPage(),
    // '/match': (_) => const MatchPage(),
  };
}