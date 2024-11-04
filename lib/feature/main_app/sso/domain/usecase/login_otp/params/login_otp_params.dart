import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_otp_params.g.dart';

@JsonSerializable(createFactory: false)
class LoginOtpParams extends Equatable {
  final String nationalCode;
  final String otp;

  const LoginOtpParams({required this.nationalCode, required this.otp});

  Map<String, dynamic> toJson() => _$LoginOtpParamsToJson(this);
  
  @override
  List<Object?> get props => [nationalCode, otp];

}
