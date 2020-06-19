import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_mvvm/models/user_model.dart';

class UserAPI {

  static Future<MUser> getUser(String id) async {
    String apiUrl = "https://reqres.in/api/users/$id";

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var dataUser = (jsonObject as Map<String, dynamic>)['data'];
    return MUser.setUser(dataUser);
  }
}
