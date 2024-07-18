
import 'package:app_desafio_flutter/src/models/match_model.dart';
import 'package:app_desafio_flutter/src/repositories/match_repository.dart';

class MatchService {
  final MatchRepository _repository;

  MatchService({required MatchRepository repository}) : _repository = repository;

  Future<List<MatchModel>> getMatches() async {
    return await _repository.fetchMatches();
  }
}