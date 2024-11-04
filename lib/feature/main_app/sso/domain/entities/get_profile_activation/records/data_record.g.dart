// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRecords _$DataRecordsFromJson(Map<String, dynamic> json) => DataRecords(
      accessToken: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshExpiresin: (json['refresh_expires_in'] as num).toInt(),
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );
