import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/models/hirer_model.dart';

class HirerService {
  Future<HirerModel?> getHirerProfile(dynamic token) async {
    Response response;
    HirerModel? result;
    try {
      response = await get(
        Uri.parse('${apiUrl.hirers}/profile'),
        headers: configJson.headerAuth(token),
      );
      if (response.statusCode == 200) {
        result = HirerModel.fromJson(json.decode(response.body));
      }
    } on Exception {
      rethrow;
    }
    return result;
  }
}
