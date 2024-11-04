// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      insurer: json['insurer'] as String,
      typePolicy: json['typePolicy'] as String,
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
      lastPolicyNumber: json['lastPolicyNumber'] as String,
      policyNumber: json['policyNumber'] as String,
      policyUniqueCode: json['policyUniqueCode'] as String,
      vehicleName: json['vehicleName'] as String,
      licensePlate: json['licensePlate'] as String,
      engineNumber: json['engineNumber'] as String,
      chassisNo: json['chassisNo'] as String,
      vin: json['vin'] as String,
      productionDate: json['productionDate'] as String,
      status: json['status'] as String,
      statusCode: json['statusCode'] as String,
      policyholder: json['policyholder'] as String,
      nationalCode: json['nationalCode'] as String,
      discountFinanceYearNumber: json['discountFinanceYearNumber'] as String,
      discountFinanceYearPercent: json['discountFinanceYearPercent'] as String,
      discountLifeYearNumber: json['discountLifeYearNumber'] as String,
      discountLifeYearPercent: json['discountLifeYearPercent'] as String,
      discountDriverYearNumber: json['discountDriverYearNumber'] as String,
      discountDriverYearPercent: json['discountDriverYearPercent'] as String,
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'insurer': instance.insurer,
      'typePolicy': instance.typePolicy,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'lastPolicyNumber': instance.lastPolicyNumber,
      'policyNumber': instance.policyNumber,
      'policyUniqueCode': instance.policyUniqueCode,
      'vehicleName': instance.vehicleName,
      'licensePlate': instance.licensePlate,
      'engineNumber': instance.engineNumber,
      'chassisNo': instance.chassisNo,
      'vin': instance.vin,
      'productionDate': instance.productionDate,
      'status': instance.status,
      'statusCode': instance.statusCode,
      'policyholder': instance.policyholder,
      'nationalCode': instance.nationalCode,
      'discountFinanceYearNumber': instance.discountFinanceYearNumber,
      'discountFinanceYearPercent': instance.discountFinanceYearPercent,
      'discountLifeYearNumber': instance.discountLifeYearNumber,
      'discountLifeYearPercent': instance.discountLifeYearPercent,
      'discountDriverYearNumber': instance.discountDriverYearNumber,
      'discountDriverYearPercent': instance.discountDriverYearPercent,
    };
