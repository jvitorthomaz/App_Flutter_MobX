import 'package:app_desafio_flutter/src/models/tip_model.dart';
import 'package:app_desafio_flutter/src/repositories/tip_repository.dart';

class TipService {
  final TipRepository _repository;

  TipService({required TipRepository repository}) : _repository = repository;

  Future<List<TipModel>> getTips() async {
    return _repository.fetchTips();
  }
}