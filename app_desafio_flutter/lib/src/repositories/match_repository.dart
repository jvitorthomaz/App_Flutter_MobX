import 'dart:convert';
import 'package:app_desafio_flutter/src/core/restClient/restClient.dart';
import 'package:app_desafio_flutter/src/models/match_model.dart';
import 'package:http/http.dart' as http;

class MatchRepository {
  Future<List<MatchModel>> fetchMatches() async {
    final url = Uri.parse('${URLBASE.urlBase}/matches');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
        print('-------------------');
        print('-------------------');
        print(data.length);
        print(data.elementAt(0));
        print('-------------------');
        print('-------------------');
        return data.map<MatchModel>((map) => MatchModel.fromMap(map)).toList();
      //return data.map((json) => MatchModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
