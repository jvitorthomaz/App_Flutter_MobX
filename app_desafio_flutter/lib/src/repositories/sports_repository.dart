import 'dart:convert';
import 'package:app_desafio_flutter/src/core/restClient/restClient.dart';
import 'package:app_desafio_flutter/src/models/sports_model.dart';
import 'package:http/http.dart' as http;

class SportsRepository {
  Future<List<SportsModel>> fetchSports() async {
    final url = Uri.parse('${URLBASE.urlBase}/sports');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => SportsModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
