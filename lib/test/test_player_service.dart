import 'dart:convert';

import 'package:http/http.dart';
import 'package:playtogether_hirer/test/test_player_model.dart';
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;

class TestService {
  Future<List<TestModel>?> getModels(dynamic token) async {
    Response response;
    List<TestModel>? result;

    try {
      response = response = await get(
        Uri.parse(
            "https://play-together.azurewebsites.net/api/play-together/v1.1/players"),
        headers: configJson.headerAuth(token),
      );

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        result = body.map((dynamic item) => TestModel.fromJson(item)).toList();
      }
    } catch (Exception) {
      print(Exception);
      rethrow;
    }
    return result;
  }
}
