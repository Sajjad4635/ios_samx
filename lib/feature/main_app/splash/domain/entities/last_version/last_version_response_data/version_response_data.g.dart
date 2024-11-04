// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionResponseData _$VersionResponseDataFromJson(Map<String, dynamic> json) =>
    VersionResponseData(
      lastVersion: json['lastVersion'] == null
          ? null
          : LastVersionResponseData.fromJson(
              json['lastVersion'] as Map<String, dynamic>),
      isAppUpToDate: json['isAppUpToDate'] as bool,
    );
