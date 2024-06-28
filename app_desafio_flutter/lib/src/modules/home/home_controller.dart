
import 'package:app_desafio_flutter/src/modules/coreController/core_controller.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CoreController coreController;
  _HomeControllerBase(this.coreController);
}