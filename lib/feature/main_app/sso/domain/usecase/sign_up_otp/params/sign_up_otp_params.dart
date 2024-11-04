import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_otp_params.g.dart';

@JsonSerializable(createFactory: false)
class SignUpOtpParams extends Equatable {
  final String nationalCode;
  final String otp;

  const SignUpOtpParams({required this.nationalCode, required this.otp});

  Map<String, dynamic> toJson() => _$SignUpOtpParamsToJson(this);
  
  @override
  List<Object?> get props => [nationalCode, otp];
}
