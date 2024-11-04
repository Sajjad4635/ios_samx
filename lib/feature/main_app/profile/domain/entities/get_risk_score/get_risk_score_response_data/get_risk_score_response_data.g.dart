// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_risk_score_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRiskScoreResponseData _$GetRiskScoreResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetRiskScoreResponseData(
      (json['trackingCode'] as num?)?.toInt(),
      (json['safetyScore'] as num?)?.toDouble(),
      json['lastInquiryDate'] as String?,
    );
