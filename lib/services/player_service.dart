import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/model/player_model.dart';

class PlayerService {
  // Future<List<PlayerModel>> getAllPlayerProfile(dynamic token) async {
  //   Response response;
  //   late List<PlayerModel> result;
  //   try {
  //     response = response = await get(
  //       Uri.parse(apiUrl.players),
  //       headers: configJson.headerAuth(token),
  //     );

  //     if (response.statusCode == 200) {
  //       List<dynamic> body = jsonDecode(response.body);
  //       result =
  //           body.map((dynamic item) => PlayerModel.fromJson(item)).toList();
  //     }
  //   } on Exception {
  //     rethrow;
  //   }
  //   return result;
  // }
}
