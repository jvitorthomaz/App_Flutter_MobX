
import 'package:app_desafio_flutter/routes.dart';
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupGetIt() {
  getIt.registerLazySingleton<Routes>(() => Routes());
  // getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());
  // getIt.registerLazySingleton<LoginStore>(() => LoginStore(
  //       getIt<LoginRepository>(),
  //     ));
  // getIt.registerLazySingleton<AuthenticationController>(
  //     () => AuthenticationController(getIt<LoginStore>()));
  getIt.registerLazySingleton<HomeController>(
      () => HomeController(getIt<CoreController>(),));
  // getIt.registerLazySingleton<MatchService>(() => MatchService(
  //       repository: getIt<MatchRepository>(),
  //     ));
  // getIt.registerLazySingleton<MatchRepository>(() => MatchRepository());
  // getIt.registerLazySingleton<MatchStore>(() => MatchStore(
  //       getIt<MatchRepository>(),
  //     ));
  // getIt.registerLazySingleton<SportsService>(() => SportsService(
  //       repository: getIt<SportsRepository>(),
  //     ));
  // getIt.registerLazySingleton<SportsRepository>(() => SportsRepository());
  // getIt.registerLazySingleton<SportsStore>(() => SportsStore(
  //       getIt<SportsRepository>(),
  //     ));
  // getIt.registerLazySingleton<ChampionshipService>(() => ChampionshipService(
  //       repository: getIt<ChampionshipRepository>(),
  //     ));
  // getIt.registerLazySingleton<ChampionshipRepository>(
  //     () => ChampionshipRepository());
  // getIt.registerLazySingleton<ChampionshipStore>(() => ChampionshipStore(
  //       getIt<ChampionshipRepository>(),
  //     ));
  // getIt.registerLazySingleton<BonusService>(() => BonusService(
  //       repository: getIt<BonusRepository>(),
  //     ));
  // getIt.registerLazySingleton<BonusRepository>(() => BonusRepository());
  // getIt.registerLazySingleton<BonusStore>(() => BonusStore(
  //       getIt<BonusRepository>(),
  //     ));
  // getIt.registerLazySingleton<WonBetService>(() => WonBetService(
  //       repository: getIt<WonBetRepository>(),
  //     ));
  // getIt.registerLazySingleton<WonBetRepository>(() => WonBetRepository());
  // getIt.registerLazySingleton<WonBetStore>(() => WonBetStore(
  //       getIt<WonBetRepository>(),
  //     ));
  // getIt.registerLazySingleton<TipService>(() => TipService(
  //       repository: getIt<TipRepository>(),
  //     ));
  // getIt.registerLazySingleton<TipRepository>(() => TipRepository());
  // getIt.registerLazySingleton<TipStore>(() => TipStore(
  //       getIt<TipRepository>(),
  //     ));
  getIt.registerLazySingleton<CoreController>(() => CoreController(
        // getIt<MatchStore>(),
        // getIt<SportsStore>(),
        // getIt<ChampionshipStore>(),
        // getIt<BonusStore>(),
        // getIt<WonBetStore>(),
        // getIt<TipStore>(),
        // getIt<SportsService>(),
        // getIt<ChampionshipService>(),
        // getIt<WonBetService>(),
        // getIt<TipService>(),
        // getIt<BonusService>(),
        // getIt<MatchService>(),
      ));
}
