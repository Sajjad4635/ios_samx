import 'failure_dio_error_list.dart';

class DioFailureList extends FailureDioErrorList implements Exception {
  DioFailureList({String? message, String? code}) : super(message: message, code: code);

  @override
  String toString() {
    return  'DioFailure: $message (Status code: $code)';
  }
}
