import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../errors/failures/failure.dart';

handleDioError(DioException e) {
  if (e.response?.statusCode == null) {
    return Failure.fromException("errors.network_error".tr(), null);
  } else {
    String message = e.response!.data["message"][0];
    int code = e.response!.data["code"];

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
    // if (e.response?.statusCode == 401) {
    //   return Failure.fromException("برای ادامه وارد حساب کاربری خود شوید", 401);
    // } else if (e.response!.statusCode == 403) {
    //   return Failure.fromException("خطای دسترسی", 403);
    // } else {
    //   String message = e.response!.data["message"];
    //   int code = e.response!.data["code"];

    //   switch (e.type) {
    //     case DioErrorType.badCertificate:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.badResponse:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.cancel:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.connectionError:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.connectionTimeout:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.sendTimeout:
    //       return Failure.fromException(message, code);
    //     case DioErrorType.unknown:
    //       return Failure.fromException(message, code);
    //   }
    // }
  }
}
