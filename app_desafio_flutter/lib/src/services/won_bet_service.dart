import 'package:app_desafio_flutter/src/models/won_bet_model.dart';
import 'package:app_desafio_flutter/src/repositories/won_bet_repository.dart';

class WonBetService {
  final WonBetRepository _repository;

  WonBetService({required WonBetRepository repository}) : _repository = repository;

  Future<List<WonBetModel>> getWonBets() async {
    return _repository.fetchWonBets();
  }
}