import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../errors/failures/failure.dart';

handleDioErrorUnitlinked(DioException e) {
  if (e.response?.statusCode == null) {
    return Failure.fromException("errors.network_error".tr(), null);
  } else {
    String message = e.response!.data["messages"].first;
    String code = e.response!.data["code"];

    final parsedCode = int.parse(code);

    if (e.response?.statusCode == 530) {
      return Failure.fromException(message, 503);
    }

    switch (e.type) {
      case DioExceptionType.badCertificate:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.badResponse:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.cancel:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.connectionError:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.connectionTimeout:
        return Failure.fromException(
          message,
          parsedCode,
        );
      case DioExceptionType.sendTimeout:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.unknown:
        return Failure.fromException(message, parsedCode);
      case DioExceptionType.receiveTimeout:
        return Failure.fromException(message, parsedCode);
    }
  }
}
