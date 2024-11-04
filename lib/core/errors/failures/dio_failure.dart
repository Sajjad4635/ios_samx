import 'package:ios_samx/core/errors/failures/failure.dart';

class DioFailure extends Failure implements Exception {
  DioFailure({String? message, int? code}) : super(message: message, code: code);

  @override
  String toString() {
    return  'DioFailure: $message (Status code: $code)';
  }
}
