
import 'package:app_desafio_flutter/routes.dart';
import 'package:app_desafio_flutter/src/modules/auth/auth_controller.dart';
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:app_desafio_flutter/src/repositories/login_respository.dart';
import 'package:app_desafio_flutter/src/repositories/sports_repository.dart';
import 'package:app_desafio_flutter/src/services/login_service.dart';
import 'package:app_desafio_flutter/src/services/sports_service.dart';
import 'package:app_desafio_flutter/src/store/sports_store.dart';
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
  getIt.registerLazySingleton<SportsStore>(() => SportsStore(
        getIt<SportsRepository>(),
      ));

  getIt.registerLazySingleton<CoreController>(() => CoreController(
    getIt<SportsService>(),
    getIt<SportsStore>(),
  ));
}
