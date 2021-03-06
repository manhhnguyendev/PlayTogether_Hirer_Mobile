import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;
import 'package:playtogether_hirer/models/register_model.dart';

class RegisterService {
  Future<RegisterModel?> register(RegisterModel registerModel) async {
    Response response;
    RegisterModel? result;
    try {
      response = await post(
        Uri.parse('${apiUrl.accounts}/register-hirer'),
        headers: configJson.header(),
        body: jsonEncode(registerModel.toJson()),
      );
      if (response.statusCode == 200) {
        result = RegisterModel.fromJson(json.decode(response.body));
      }
    } on Exception {
      rethrow;
    }
    return result;
  }
}
