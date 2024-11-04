// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_dept_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDeptResponseData _$VehicleDeptResponseDataFromJson(
        Map<String, dynamic> json) =>
    VehicleDeptResponseData(
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      operationTime: json['operationTime'] == null
          ? null
          : DateTime.parse(json['operationTime'] as String),
    );
