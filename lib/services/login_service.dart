import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/models/login_model.dart';
import 'package:playtogether_hirer/models/token_model.dart';

class LoginService {
  Future<TokenModel?> login(LoginModel login) async {
    Response response;
    TokenModel? result;
    try {
      response = await post(
        Uri.parse('${apiUrl.accounts}/login'),
        headers: configJson.header(),
        body: jsonEncode(login.toJson()),
      );
      if (response.statusCode == 200) {
        result = TokenModel.fromJson(json.decode(response.body));
      }
    } on Exception {
      rethrow;
    }
    return result;
  }
}
