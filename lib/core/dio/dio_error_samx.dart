import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../errors/failures/failure.dart';

handleDioErrorSamX(DioException e) {
  if (e.response?.statusCode == null) {
    return Failure.fromException("errors.network_error".tr(), 500);
  } else {
    String message = e.response!.data["message"];
  //  int code = int.parse(e.response!.data["code"]);
    int? code  = e.response!.statusCode ?? 100;


    switch (e.type) {
      case DioExceptionType.badCertificate:
        return Failure.fromException(message, code);
      case DioExceptionType.badResponse:
        return Failure.fromException(message, code);
      case DioExceptionType.cancel:
        return Failure.fromException(message, code);
      case DioExceptionType.connectionError:
        return Failure.fromException(message, code);
      case DioExceptionType.connectionTimeout:
        return Failure.fromException(
          message,
          code,
        );
      case DioExceptionType.sendTimeout:
        return Failure.fromException(message, code);
      case DioExceptionType.unknown:
        return Failure.fromException(message, code);
      case DioExceptionType.receiveTimeout:
        return Failure.fromException(message, code);
    }
  }
}
