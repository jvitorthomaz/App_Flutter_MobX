import 'dart:convert';
import 'package:app_desafio_flutter/src/core/restClient/restClient.dart';
import 'package:app_desafio_flutter/src/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future<LoginModel> loginUser(String email, String password) async {
    final url = Uri.parse('$urlBase/login');

    final response = await http.post(
      url,
      // headers: {'Content-Type': 'application/json'},
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> data = json.decode(response.body);
      return LoginModel.fromJson(data);
    } else {
      print(
          'Login failed. Status: ${response.statusCode}, Body: ${response.body}');
      throw Exception('Login failed');
    }
  }
}
