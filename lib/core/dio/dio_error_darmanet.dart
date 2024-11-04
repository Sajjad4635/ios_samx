import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../errors/failures/failure.dart';

handleDioErrorDarmanet(DioException e) {
  if (e.response?.statusCode == null) {
    return Failure.fromException("errors.network_error".tr(), null);
  } else {
    if (e.response!.statusCode == 401) {
      return Failure.fromException("errors.unauthorized".tr(), 401);
    } else if (e.response!.statusCode == 403) {
      return Failure.fromException("errors.access_error".tr(), 403);
    } else {
      String message = e.response!.data["errorMessage"];
      int code = e.response!.statusCode!;

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
          return Failure.fromException(message, code);
        case DioExceptionType.sendTimeout:
          return Failure.fromException(message, code);
        case DioExceptionType.unknown:
          return Failure.fromException(message, code);
        case DioExceptionType.receiveTimeout:
          return Failure.fromException(message, code);
      }
    }
  }
}
