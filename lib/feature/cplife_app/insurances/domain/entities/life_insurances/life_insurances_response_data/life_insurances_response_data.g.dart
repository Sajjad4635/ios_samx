// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_insurances_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifeInsurancesResponseData _$LifeInsurancesResponseDataFromJson(
        Map<String, dynamic> json) =>
    LifeInsurancesResponseData(
      policyId: (json['policyId'] as num).toInt(),
      fullBNO: json['fullBNO'] as String,
      insurerName: json['insurerName'] as String,
      insurerCode: (json['insurerCode'] as num).toInt(),
      role: json['role'] as String,
      title: json['title'] as String,
      agent: json['agent'] as String,
      agentCode: (json['agentCode'] as num).toInt(),
      issuer: json['issuer'] as String,
      issuerCode: (json['issuerCode'] as num).toInt(),
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as String,
      insuranceYear: (json['insuranceYear'] as num).toInt(),
      isUnitLinked: json['isUnitLinked'] as bool,
    );
