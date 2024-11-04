import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/dio/interceptors/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:uuid/uuid.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => FlavorConfig.instance.variables["baseURL"];

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) {
    final dioInstance = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Content-Type': 'application/json;odata.metadata=minimal;odata.streaming=true',
          'accept': 'application/json;odata.metadata=minimal;odata.streaming=true',
          'Access-Control-Allow-Origin': '*',
          "Accept-Header": "*/*",
          "Access-Control-Allow-Credentials": true,
          // Required for cookies, authorization headers with HTTPS
          "Access-Control-Allow-Headers":
              "Origin,Content-Disposition,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token",
          "Access-Control-Allow-Methods": "GET, POST, PUT"
        },
        receiveDataWhenStatusError: true,
      ),
    );
    dioInstance.interceptors.clear();
    dioInstance.interceptors.addAll([
      // DioCacheInterceptor(options: DioCacheUtil.hiveCacheOptions),
      LogginInterceptor(),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final Box box = Hive.box(Strings.appDBName);
          String? authorization = await box.get(Strings.authorization);
          options.headers['Authorization'] = 'Bearer $authorization';
          options.headers['request-id'] = const Uuid().v4();
          return handler.next(options);
        },
      )
    ]);

    return dioInstance;
  }
}
