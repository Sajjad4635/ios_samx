import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ElasticLogger {
  final String url;
  final String username;
  final String password;
  final String index;
  final Dio dio;

  ElasticLogger({
    Dio? dio,
    required this.url,
    required this.username,
    required this.password,
    required this.index,
  }) : dio = dio ?? Dio();

  Future<void> log(String level, String message,
      {Map<String, dynamic>? additionalData}) async {
    final timestamp = DateTime.now().toString();
    final logData = {
      '@timestamp': timestamp,
      'level': level,
      'message': message,
      ...(additionalData ?? {}),
    };

    final body = jsonEncode(logData);

    try {
      final options = Options(
        headers: {
          'Authorization':
              'Basic ${base64Encode(utf8.encode('$username:$password'))}',
          'Content-Type': 'application/json',
        },
      );

      final response =
          await dio.post('$url/$index/_doc', data: body, options: options);

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        debugPrint('Log sent to Elasticsearch successfully.');
      }
    } on DioException catch (error) {
      print('Error sending log to Elasticsearch: ${error.message}');
    }
  }
}
