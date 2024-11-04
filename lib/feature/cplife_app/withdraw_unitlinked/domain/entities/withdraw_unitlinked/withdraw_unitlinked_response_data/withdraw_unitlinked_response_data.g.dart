// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_unitlinked_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawUnitlinkedResponseData _$WithdrawUnitlinkedResponseDataFromJson(
        Map<String, dynamic> json) =>
    WithdrawUnitlinkedResponseData(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      dateTime: json['dateTime'] as String,
      state: json['state'] as String,
      deliveryType: json['deliveryType'] as String,
      policyId: (json['policyId'] as num).toInt(),
      lasRequestId: json['lasRequestId'] as String?,
      failedReason: json['failedReason'] as String?,
    );
