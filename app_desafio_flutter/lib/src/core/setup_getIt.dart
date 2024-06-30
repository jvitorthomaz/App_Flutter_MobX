
import 'package:app_desafio_flutter/routes.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:app_desafio_flutter/src/repositories/bonus_repository.dart';
import 'package:app_desafio_flutter/src/repositories/championship_repository.dart';
import 'package:app_desafio_flutter/src/repositories/login_respository.dart';
import 'package:app_desafio_flutter/src/repositories/sports_repository.dart';
import 'package:app_desafio_flutter/src/repositories/tip_repository.dart';
import 'package:app_desafio_flutter/src/repositories/won_bet_repository.dart';
import 'package:app_desafio_flutter/src/services/bonus_service.dart';
import 'package:app_desafio_flutter/src/services/championship_service.dart';
import 'package:app_desafio_flutter/src/services/login_service.dart';
import 'package:app_desafio_flutter/src/services/sports_service.dart';
import 'package:app_desafio_flutter/src/services/tip_service.dart';
import 'package:app_desafio_flutter/src/services/won_bet_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupGetIt() {
  getIt.registerLazySingleton<Routes>(() => Routes());
  getIt.registerLazySingleton<HomeController>(() => HomeController(getIt<CoreController>(),));
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());
  getIt.registerLazySingleton<LoginService>(() => LoginService(getIt<LoginRepository>(),));
  getIt.registerLazySingleton<AuthController>(() => AuthController(getIt<LoginService>()));

  getIt.registerLazySingleton<SportsService>(() => SportsService(
    repository: getIt<SportsRepository>(),
  ));
  getIt.registerLazySingleton<SportsRepository>(() => SportsRepository());

  getIt.registerLazySingleton<ChampionshipService>(() => ChampionshipService(
    repository: getIt<ChampionshipRepository>(),
  ));
  getIt.registerLazySingleton<ChampionshipRepository>(
    () => ChampionshipRepository()
  );
  getIt.registerLazySingleton<TipService>(() => TipService(
    repository: getIt<TipRepository>(),
  ));
  getIt.registerLazySingleton<TipRepository>(() => TipRepository());

  getIt.registerLazySingleton<BonusService>(() => BonusService(
      repository: getIt<BonusRepository>(),
  ));
  getIt.registerLazySingleton<BonusRepository>(() => BonusRepository());
  getIt.registerLazySingleton<WonBetService>(() => WonBetService(
      repository: getIt<WonBetRepository>(),
  ));
  getIt.registerLazySingleton<WonBetRepository>(() => WonBetRepository());

  getIt.registerLazySingleton<CoreController>(() => CoreController(
    getIt<SportsService>(),
    getIt<ChampionshipService>(),
    getIt<TipService>(),
    getIt<BonusService>(),
    getIt<WonBetService>(),
  ));
}
