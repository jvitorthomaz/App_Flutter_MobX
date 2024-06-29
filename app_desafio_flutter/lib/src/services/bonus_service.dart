import 'package:app_desafio_flutter/src/models/bonus_model.dart';
import 'package:app_desafio_flutter/src/repositories/bonus_repository.dart';

class BonusService {
  final BonusRepository _repository;

  BonusService({required BonusRepository repository}) : _repository = repository;

  Future<List<BonusModel>> getBonus() async {
    return _repository.fetchBonus();
  }
}