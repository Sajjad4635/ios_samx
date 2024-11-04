import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_params.g.dart';

@JsonSerializable(createFactory: false)
class SendOtpParams extends Equatable {
  final String nationalCode;
  final String? destinationPhoneNumber;
  final String? destinationIbanNumber;
  final int amount;
  final int otpType;

  const SendOtpParams(
      {required this.nationalCode,
      this.destinationPhoneNumber,
      this.destinationIbanNumber,
      required this.amount,
      required this.otpType});

  Map<String, dynamic> toJson() => _$SendOtpParamsToJson(this);

  @override
  List<Object?> get props => [
        nationalCode,
        destinationPhoneNumber,
        destinationIbanNumber,
        amount,
        otpType
      ];
}
