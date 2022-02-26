import 'package:playtogether_hirer/models/hirer_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
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

  Future<LoginModel> login(String email, String password) async {
    Response response;
    LoginModel result;
    try {
      response = await post(
        Uri.parse('${apiUrl.accounts}/login?email=$email&password=$password'),
        // headers: configJson.header(),
      );
      // if (response.statusCode == 200) {}
      print(json.decode(response.body));
      result = LoginModel.fromJson(json.decode(response.body));
    } on Exception {
      rethrow;
    }
    return result;
  }
}
