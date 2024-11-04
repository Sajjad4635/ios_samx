import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_otp_response_data.g.dart';

@JsonSerializable(createToJson: false)
class LoginOtpResponseData extends Equatable {
  @JsonKey(name: "accessToken")
  final String accessToken;
  @JsonKey(name: "expiresIn")
  final int expireIn;
  @JsonKey(name: "tokenType")
  final String tokenType;

  const LoginOtpResponseData({
    required this.accessToken,
    required this.expireIn,
    required this.tokenType,
  });

  factory LoginOtpResponseData.fromJson(Map<String, dynamic> json) => _$LoginOtpResponseDataFromJson(json);

  @override
  List<Object?> get props => [accessToken, expireIn, tokenType];
}
