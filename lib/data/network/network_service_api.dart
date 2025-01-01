import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:solution_sphere/data/exception/app_exception.dart';
import 'package:solution_sphere/data/network/base_api.dart';

class NetworkServiceApi implements BaseApi {
  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
      print(jsonResponse);
    } on SocketException {
      throw NoInternetException(message: "There is no internet connection");
    } on TimeoutException {
      throw NoInternetException(message: "There is timeOut");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http.get(Uri.parse(url));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException(message: "There is no internet connection");
    } on TimeoutException {
      throw NoInternetException(message: "There is timeOut");
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    if (kDebugMode) {
      print(response.statusCode);
      // print(response.body[0]);
    }
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 500:
        throw FetchDataException(message: "status code is 500");
    }
  }
}
