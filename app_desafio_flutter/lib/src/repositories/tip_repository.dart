import 'dart:convert';
import 'package:app_desafio_flutter/src/core/restClient/restClient.dart';
import 'package:app_desafio_flutter/src/models/tip_model.dart';
import 'package:http/http.dart' as http;

class TipRepository {
  Future<List<TipModel>> fetchTips() async {
    final url = Uri.parse('${URLBASE.urlBase}/tips');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => TipModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
