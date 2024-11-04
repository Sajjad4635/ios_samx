import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:equatable/equatable.dart';

class SendOtpResponseEntities extends Equatable {
  final DioResponse dioResponse;

  const SendOtpResponseEntities({required this.dioResponse});

  @override
  List<Object?> get props => [dioResponse];
}


