import 'package:flutter/foundation.dart';
import 'package:solution_sphere/config/constants/app_url.dart';
import 'package:solution_sphere/data/network/network_service_api.dart';

class LoginRespository {
  final _api = NetworkServiceApi();

  Future<dynamic> loginUser(dynamic data) async {
    if (kDebugMode) {
      print("this is the ${data}");
    }
    final response = await _api.postApi(AppUrl.loginUser, data);
    return response;
  }
}
