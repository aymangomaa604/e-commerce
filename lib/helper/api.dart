import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

class Api {
  final Dio dio = Dio();
  Future<dynamic> get({required String url}) async {
    var response = await dio.get(url);
    try {
      return response;
    } on DioException catch (e) {
      final String eRR = e.response?.data;
      throw Exception(eRR);
    }
  }

  Future<Map<String, dynamic>> post(
      {required String url, @required dynamic body}) async {
    Response response = await Dio().post(
      url,
      data: body,
    );

    try {
      Map<String, dynamic> data = response.data;

      return data;
    } on DioException catch (e) {
      final String eRR = e.response?.data;
      throw Exception(eRR);
    }
  }


  Future<Map<String, dynamic>> put(
      {required String url, @required dynamic body}) async {
    Response response = await Dio().put(
      url,
      data: body,
    );

    try {
      Map<String, dynamic> data = response.data;

      return data;
    } on DioException catch (e) {
      final String eRR = e.response?.data;
      throw Exception(eRR);
    }
  }
}
