import 'package:app_desafio_flutter/src/models/bonus_model.dart';
import 'package:app_desafio_flutter/src/models/championship_model.dart';
import 'package:app_desafio_flutter/src/models/match_model.dart';
import 'package:app_desafio_flutter/src/models/sports_model.dart';
import 'package:app_desafio_flutter/src/models/tip_model.dart';
import 'package:app_desafio_flutter/src/models/won_bet_model.dart';
import 'package:app_desafio_flutter/src/services/bonus_service.dart';
import 'package:app_desafio_flutter/src/services/championship_service.dart';
import 'package:app_desafio_flutter/src/services/match_service.dart';
import 'package:app_desafio_flutter/src/services/sports_service.dart';
import 'package:app_desafio_flutter/src/services/tip_service.dart';
import 'package:app_desafio_flutter/src/services/won_bet_service.dart';
import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

class CoreController = _CoreControllerBase with _$CoreController;

abstract class _CoreControllerBase with Store {
  final SportsService sportsService;
  final ChampionshipService championshipService;
  final TipService tipService;
  final BonusService bonusService;
  final WonBetService wonBetService;
  final MatchService matchService;

  _CoreControllerBase(
    this.sportsService,
    this.championshipService,
    this.tipService,
    this.bonusService, 
    this.wonBetService, 
    this.matchService,
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

  @observable
  List<MatchModel> listMatch = [];

  @observable
  MatchModel match = MatchModel.fromJson({
      "date": "2023-12-02T09:00:24.723Z",
      "team_a": "Biloxi",
      "team_b": "Towson",
      "team_a_score": 7585,
      "team_b_score": 7016,
      "1xbet_odds_avg": 67336.67,
      "betsafe_odds_avg": 76321.71,
      "betsson_odds_avg": 59871.08,
      "likes_count": 46643,
      "stars_count": 19077,
      "views_count": 52890,
      "shares_count": 8098,
      "channels": "alarm Classical Benz",
      "stadium": "Topeka",
      "referee": "Faith McDermott",
      "referee_avatar": "https://loremflickr.com/640/480/people",
      "referee_stats": "Ratione temporibus facilis iusto. Minima ab eveniet. Aspernatur quibusdam beatae vitae nam consequatur quas molestias. Assumenda a totam reiciendis recusandae ullam temporibus. Aperiam exercitationem ad laudantium laborum facilis cupiditate ad accusamus. Dignissimos officiis minima eligendi voluptatem.",
      "team_a_image": "https://loremflickr.com/640/480/sports",
      "team_b_image": "https://loremflickr.com/640/480/sports",
      "red_card_media": 15340.82,
      "yellow_card_media": 4027.24,
      "team_a_stats": "Voluptate quam esse corrupti deserunt. Magni necessitatibus esse. Modi dolores debitis optio optio voluptas tempore corrupti. Maiores doloribus excepturi officia eos similique minus inventore ipsum. Ut quam qui ipsam maxime ab sint. Commodi nemo labore.",
      "team_b_stats": "Maxime illum soluta reprehenderit voluptates velit excepturi. Nihil quas error commodi aut inventore adipisci modi suscipit. Occaecati molestiae repudiandae nostrum possimus saepe.",
      "id": "1"
  });


  Future<void> initValues() async {
    await setListSports();
    await setListChampionships();
    await setListTips();
    await setListBonus();
    await setListWonBets();
    await setListMatches();
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

  @action
  Future<bool> setListMatches() async {
        print('-------------------');
        print('-------------------');
        print('entrou setListmatches');
        print('-------------------');
        print('-------------------');
    listMatch = await matchService.getMatches();
        print('-------------------');
        print('-------------------');
        print(listMatch.length);
        print(listMatch[0].id.isEmpty);
        print('-------------------');
        print('-------------------');
    return true;
  }

  @action
  Future<void> setMatch(MatchModel matchModel) async {
    match = await matchModel;
  }

}
