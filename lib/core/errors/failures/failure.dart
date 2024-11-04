import 'dio_failure.dart';

abstract class Failure{
  final int? code;
  final String? message;

  Failure({this.message, this.code});

  factory Failure.fromException(final String message, final int? code,) {
    return DioFailure(message: message, code: code);
  }
}
