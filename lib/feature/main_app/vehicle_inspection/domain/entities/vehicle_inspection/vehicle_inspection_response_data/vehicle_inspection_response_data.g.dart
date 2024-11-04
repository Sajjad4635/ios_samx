// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_inspection_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleInspectionResponseData _$VehicleInspectionResponseDataFromJson(
        Map<String, dynamic> json) =>
    VehicleInspectionResponseData(
      createdDatetime: DateTime.parse(json['createdDatetime'] as String),
      fullName: json['fullName'] as String?,
      plateAlphabet: json['plateAlphabet'] as String,
      segment1: (json['segment1'] as num).toInt(),
      segment2: (json['segment2'] as num).toInt(),
      region: (json['region'] as num).toInt(),
      lastStateTitle: json['lastStateTitle'] as String?,
      token: json['token'] as String,
      description: json['description'] as String,
    );
