import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_coding/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;



class NetworkApiServices implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponce;
    try{
      final responce  = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 12));

      jsonResponce = returnResponce(responce);

      if(responce.statusCode == 200) {}

    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException();
    }
    return jsonResponce;
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    dynamic jsonResponce;
    try{
      final responce  = await http.post(Uri.parse(url),body: data).timeout(const Duration(seconds: 12));
      jsonResponce = returnResponce(responce);

      if(responce.statusCode == 200) {}
    }on SocketException{
      throw NoInternetException();
    }on TimeoutException{
      throw FetchDataException();
    }
    return jsonResponce;
  }


  dynamic returnResponce(http.Response response) {
    switch(response) {
      case 200:
        dynamic JsonResponse = jsonDecode(response.body);
        return JsonResponse;
      case 400:
        dynamic JsonResponse = jsonDecode(response.body);
        return JsonResponse;
        case 400:
          UnAuthoriseException();
      case 500:
        throw FetchDataException("Error communiting with server "+response.statusCode.toString());
      default:
        throw FetchDataException();
    }

  }



}