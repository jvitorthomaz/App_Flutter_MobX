import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:app_desafio_flutter/src/core/restClient/restClient.dart';
import 'package:app_desafio_flutter/src/models/match_model.dart';
import 'package:http/http.dart' as http;

class MatchRepository {
  Dio dio = Dio();
  Future<List<MatchModel>> fetchMatches() async {
    final url = Uri.parse('${URLBASE.urlBase}/matches');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
        return data.map<MatchModel>((map) => MatchModel.fromMap(map)).toList(); 

    } else {
      throw Exception('Failed to load data');
    }
  }
}
