import 'package:playtogether_hirer/model/hirer_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:playtogether_hirer/constants/api_url.dart' as apiUrl;
import 'package:playtogether_hirer/constants/config_json.dart' as configJson;

class HirerService {
  Future<List<HirerModel>> getHirer(dynamic token) async {
    Response response;
    late List<HirerModel> result;
    try {
      response = response = await get(
        Uri.parse(apiUrl.hirerProfile),
        headers: configJson.headerAuth(token),
      );

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        result = body.map((dynamic item) => HirerModel.fromJson(item)).toList();
      }
    } on Exception {
      rethrow;
    }
    return result;
  }

  Future<HirerModel> getHirerById(String id, dynamic token) async {
    Response response;
    late HirerModel result;
    try {
      response = await get(
        Uri.parse('${apiUrl.hirer}/$id'),
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

  Future<HirerModel> login(String email, String password) async {
    Response response;
    late HirerModel result;
    try {
      response = await get(
        Uri.parse('${apiUrl.account}/login?email=$email&password=$password'),
        headers: configJson.header(),
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
