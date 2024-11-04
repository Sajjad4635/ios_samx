// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsurancesListResponseDataItems _$InsurancesListResponseDataItemsFromJson(
        Map<String, dynamic> json) =>
    InsurancesListResponseDataItems(
      policyId: (json['policyId'] as num?)?.toInt(),
      fullPolicyNo: json['fullPolicyNo'] as String?,
      policyNo: (json['policyNo'] as num?)?.toInt(),
      policyYear: (json['policyYear'] as num?)?.toInt(),
      policyHolderFullName: json['policyHolderFullName'] as String?,
      policyHolderId: (json['policyHolderId'] as num?)?.toInt(),
      role: json['role'] as String?,
      insuranceType: json['insuranceType'] as String?,
      reagentName: json['reagentName'] as String?,
      reagentCode: (json['reagentCode'] as num?)?.toInt(),
      issuerName: json['issuerName'] as String?,
      issuerCode: (json['issuerCode'] as num?)?.toInt(),
      beginDate: json['beginDate'] as String?,
      endDate: json['endDate'] as String?,
      policyStatus: json['policyStatus'] as String?,
      insuranceGroupId: (json['insuranceGroupId'] as num?)?.toInt(),
      insuranceGroupName: json['insuranceGroupName'] as String?,
    );
