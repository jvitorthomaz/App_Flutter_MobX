import 'package:app_desafio_flutter/src/models/sports_model.dart';
import 'package:app_desafio_flutter/src/repositories/sports_repository.dart';

class SportsService {
  final SportsRepository _repository;

  SportsService({required SportsRepository repository}) : _repository = repository;

  Future<List<SportsModel>> getSports() async {
    return _repository.fetchSports();
  }
}