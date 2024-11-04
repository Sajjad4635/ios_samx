// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketResponseDataItems _$TicketResponseDataItemsFromJson(
        Map<String, dynamic> json) =>
    TicketResponseDataItems(
      id: json['id'] as String,
      amount: json['amount'] as num,
      dateTime: json['dateTime'] as String,
      state: json['state'] as String,
      failedReason: json['failedReason'] as String?,
      policyId: (json['policyId'] as num).toInt(),
      deliveryType: json['deliveryType'] as String,
      lasRequestId: json['lasRequestId'] as String?,
    );
