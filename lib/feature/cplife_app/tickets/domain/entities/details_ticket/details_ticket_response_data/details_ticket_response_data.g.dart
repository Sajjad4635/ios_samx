// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_ticket_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsTicketResponseData _$DetailsTicketResponseDataFromJson(
        Map<String, dynamic> json) =>
    DetailsTicketResponseData(
      policyId: (json['policyId'] as num).toInt(),
      issuerCode: (json['issuerCode'] as num).toInt(),
      agentCode: (json['agentCode'] as num).toInt(),
      statusTitle: json['statusTitle'] as String,
      insuranceStartDate: json['insuranceStartDate'] as String,
      insuranceEndDate: json['insuranceEndDate'] as String,
      insuranceYear: (json['insuranceYear'] as num).toInt(),
      savedMoney: (json['savedMoney'] as num).toInt(),
      requestAmount: (json['requestAmount'] as num).toInt(),
      ibanInfos: (json['ibanInfos'] as List<dynamic>)
          .map((e) => IbanInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
