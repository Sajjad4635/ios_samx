// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_otp_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpOtpResponseData _$SignUpOtpResponseDataFromJson(
        Map<String, dynamic> json) =>
    SignUpOtpResponseData(
      accessToken: json['access_token'] as String,
      expireIn: (json['expires_in'] as num).toInt(),
      tokenType: json['token_type'] as String,
    );
