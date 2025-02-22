import 'dart:convert';
import 'package:app_desafio_flutter/src/models/won_bet_model.dart';
import 'package:http/http.dart' as http;

class WonBetRepository {
  Future<List<WonBetModel>> fetchWonBets() async {
    final url = Uri.parse('https://6569cc7dde53105b0dd7af5c.mockapi.io/won_bets');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => WonBetModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
