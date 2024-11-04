
import 'dio_failure_list.dart';

abstract class FailureDioErrorList{
  final String? code;
  final String? message;

  FailureDioErrorList({this.message, this.code});

  factory FailureDioErrorList.fromException(final String message, final String? code,) {
    return DioFailureList(message: message, code: code);
  }
}
