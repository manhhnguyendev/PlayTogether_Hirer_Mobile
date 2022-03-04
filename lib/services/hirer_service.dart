import 'package:playtogether_hirer/models/hirer_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/models/login.dart';
import 'package:playtogether_hirer/models/login_model.dart';

class HirerService {
  Future<HirerModel> getHirerProfile(dynamic token) async {
    Response response;
    late HirerModel result;
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

  Future<LoginModel?> login(Login login) async {
    Response response;
    LoginModel? result;
    try {
      response = await post(
        Uri.parse(
            'https://play-together.azurewebsites.net/api/play-together/v1/accounts/login'),
        headers: configJson.header(),
        body: jsonEncode(login.toJson()),
      );
      if (response.statusCode == 200) {
        result = LoginModel.fromJson(json.decode(response.body));
      }
    } on Exception {
      rethrow;
    }
    return result;
  }
}
