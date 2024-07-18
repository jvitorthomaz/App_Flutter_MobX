
import 'package:app_desafio_flutter/src/models/championship_model.dart';
import 'package:app_desafio_flutter/src/repositories/championship_repository.dart';

class ChampionshipService {
  final ChampionshipRepository _repository;

  ChampionshipService({required ChampionshipRepository repository}) : _repository = repository;

  Future<List<ChampionshipModel>> getChampionships() async {
    return await _repository.fetchChampionships();
  }
}