// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_deposit_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDepositResponseData _$CreateDepositResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateDepositResponseData(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      dateTime: json['dateTime'] as String,
      state: json['state'] as String,
      failedReason: json['failedReason'] as String,
      deliveryType: json['deliveryType'] as String,
      lasRequestId: json['lasRequestId'] as String,
      policyId: (json['policyId'] as num).toInt(),
    );
