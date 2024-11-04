import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_otp_response_data.g.dart';

@JsonSerializable(createToJson: false)
class SignUpOtpResponseData extends Equatable {
  @JsonKey(name: "access_token")
  final String accessToken;
  @JsonKey(name: "expires_in")
  final int expireIn;
  @JsonKey(name: "token_type")
  final String tokenType;

  const SignUpOtpResponseData({
    required this.accessToken,
    required this.expireIn,
    required this.tokenType,
  });

  factory SignUpOtpResponseData.fromJson(Map<String, dynamic> json) => _$SignUpOtpResponseDataFromJson(json);

  @override
  List<Object?> get props => [accessToken, expireIn, tokenType];
}
