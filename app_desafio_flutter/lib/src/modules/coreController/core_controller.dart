import 'package:app_desafio_flutter/src/models/sports_model.dart';
import 'package:app_desafio_flutter/src/services/sports_service.dart';
import 'package:app_desafio_flutter/src/store/sports_store.dart';
import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

class CoreController = _CoreControllerBase with _$CoreController;

abstract class _CoreControllerBase with Store {
  final SportsService sportsService;
  final SportsStore sportsStore;

  _CoreControllerBase(this.sportsService, this.sportsStore);

  @observable
  List<SportsModel> listSports = [];

  Future<void> initStore() async {
    await sportsStore.fetchSports();
  }

  Future<void> initValues() async {
    await setListSports();
  }

  @action
  Future<bool> setListSports() async {
    
    listSports = await sportsService.getSports();
    return true;
  }

}
