// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_otp_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginOtpResponseData _$LoginOtpResponseDataFromJson(
        Map<String, dynamic> json) =>
    LoginOtpResponseData(
      accessToken: json['accessToken'] as String,
      expireIn: (json['expiresIn'] as num).toInt(),
      tokenType: json['tokenType'] as String,
    );
