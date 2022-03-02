import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/models/player_model.dart';

class PlayerService {
  Future<List<PlayerModel>?> getModels(dynamic token) async {
    Response response;
    List<PlayerModel>? result;

    try {
      response = response = await get(
        Uri.parse(
            "https://play-together.azurewebsites.net/api/play-together/v1.1/players"),
        headers: configJson.headerAuth(token),
      );

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        result =
            body.map((dynamic item) => PlayerModel.fromJson(item)).toList();
      }
    } catch (Exception) {
      print(Exception);
      rethrow;
    }
    return result;
  }
}
