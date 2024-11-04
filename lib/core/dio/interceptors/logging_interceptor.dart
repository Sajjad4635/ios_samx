import 'package:ios_samx/elastic_logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class LogginInterceptor extends Interceptor {
  final elasticLogger = ElasticLogger(
    dio: Dio(),
    url: FlavorConfig.instance.variables["elasticUrl"],
    username: FlavorConfig.instance.variables["elasticUsername"],
    password: FlavorConfig.instance.variables["elasticPassword"],
    index: FlavorConfig.instance.variables["elasticIndex"],
  );

  final String urlField = 'url';
  final String statusField = 'status';

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    elasticLogger.log(
      Level.low.name,
      '${options.data}',
      additionalData: {urlField: "${options.uri}"},
    );
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    elasticLogger.log(
      Level.high.name,
      '${err.message}',
      additionalData: {
        urlField: '${err.requestOptions.uri}',
        statusField: '${err.response?.statusCode}'
      },
    );
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    elasticLogger.log(
      Level.low.name,
      '${response.data}',
      additionalData: {
        urlField: "${response.requestOptions.uri}",
        statusField: '${response.statusCode}'
      },
    );
    super.onResponse(response, handler);
  }
}

enum Level { low, medium, high }
