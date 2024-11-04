import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

@JsonSerializable(createToJson: false)
class RegisterWithoutOtpEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const RegisterWithoutOtpEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [
    dioResponseCPLife,
  ];
}
