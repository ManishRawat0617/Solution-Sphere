import 'package:flutter/foundation.dart';
import 'package:solution_sphere/config/constants/app_url.dart';
import 'package:solution_sphere/data/network/network_service_api.dart';

class SignUpRespository {
  final _api = NetworkServiceApi();

  Future<dynamic> registerUser(dynamic data) async {
    if (kDebugMode) {
      print("THis is form the signUp_respository");
      print("THis is the sign up data ${data}");
    }
    final response = await _api.postApi(AppUrl.registerUser, data);

    return response;
  }
}
