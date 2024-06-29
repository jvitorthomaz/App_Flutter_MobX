import 'package:app_desafio_flutter/src/models/bonus_model.dart';
import 'package:app_desafio_flutter/src/models/championship_model.dart';
import 'package:app_desafio_flutter/src/models/sports_model.dart';
import 'package:app_desafio_flutter/src/models/tip_model.dart';
import 'package:app_desafio_flutter/src/models/won_bet_model.dart';
import 'package:app_desafio_flutter/src/services/bonus_service.dart';
import 'package:app_desafio_flutter/src/services/championship_service.dart';
import 'package:app_desafio_flutter/src/services/sports_service.dart';
import 'package:app_desafio_flutter/src/services/tip_service.dart';
import 'package:app_desafio_flutter/src/services/won_bet_service.dart';
import 'package:app_desafio_flutter/src/store/championship_store.dart';
import 'package:app_desafio_flutter/src/store/sports_store.dart';
import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

class CoreController = _CoreControllerBase with _$CoreController;

abstract class _CoreControllerBase with Store {
  final SportsService sportsService;
  final SportsStore sportsStore;
  final ChampionshipService championshipService;
  final ChampionshipStore championshipStore;
  final TipService tipService;
  final BonusService bonusService;
  final WonBetService wonBetService;

  _CoreControllerBase(
    this.sportsService,
    this.sportsStore,
    this.championshipService,
    this.championshipStore,
    this.tipService,
    this.bonusService, 
    this.wonBetService,
  );

  @observable
  List<SportsModel> listSports = [];

  @observable
  List<ChampionshipModel> listChampionships = [];

  @observable
  List<TipModel> listTips = [];

  @observable
  List<BonusModel> listBonus = [];

  @observable
  List<WonBetModel> listWonBets = [];


  Future<void> initStore() async {
    await sportsStore.fetchSports();
    await championshipStore.fetchChampionships();
  }

  Future<void> initValues() async {
    await setListSports();
    await setListChampionships();
    await setListTips();
    await setListBonus();
    await setListWonBets();
  }

  @action
  Future<bool> setListSports() async {
    
    listSports = await sportsService.getSports();
    return true;
  }

  @action
  Future<bool> setListChampionships() async {
    listChampionships = await championshipService.getChampionships();
    return true;
  }

  @action
  Future<bool> setListTips() async {
    listTips = await tipService.getTips();
    return true;
  }

  @action
  Future<bool> setListBonus() async {
    listBonus = await bonusService.getBonus();
    return true;
  }

  @action
  Future<bool> setListWonBets() async {
    listWonBets = await wonBetService.getWonBets();
    return true;
  }

}
