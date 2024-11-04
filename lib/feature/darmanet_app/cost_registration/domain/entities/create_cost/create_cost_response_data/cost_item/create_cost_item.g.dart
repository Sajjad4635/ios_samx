// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cost_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CostItem _$CostItemFromJson(Map<String, dynamic> json) => CostItem(
      id: json['Id'] as String?,
      envelopeId: json['EnvelopeId'] as String?,
      centerName: json['CenterName'] as String?,
      givenAmount: (json['GivenAmount'] as num?)?.toInt(),
      personId: json['PersonId'] as String?,
      costDescriptionId: json['CostDescriptionId'] as String?,
      costDescriptionTitle: json['CostDescriptionTitle'] as String?,
      personName: json['PersonName'] as String?,
      nationalCode: json['NationalCode'] as String?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      customerCompanyName: json['CustomerCompanyName'] as String?,
      customerCompanyId: json['CustomerCompanyId'] as String?,
      envelopeName: json['EnvelopeName'] as String?,
      envelopeBranchId: json['EnvelopeBranchId'] as String?,
      insuranceCompanyId: json['InsuranceCompanyId'] as String?,
    );

Map<String, dynamic> _$CostItemToJson(CostItem instance) => <String, dynamic>{
      'Id': instance.id,
      'EnvelopeId': instance.envelopeId,
      'CenterName': instance.centerName,
      'GivenAmount': instance.givenAmount,
      'PersonId': instance.personId,
      'CostDescriptionId': instance.costDescriptionId,
      'CostDescriptionTitle': instance.costDescriptionTitle,
      'PersonName': instance.personName,
      'NationalCode': instance.nationalCode,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'CustomerCompanyName': instance.customerCompanyName,
      'CustomerCompanyId': instance.customerCompanyId,
      'EnvelopeName': instance.envelopeName,
      'EnvelopeBranchId': instance.envelopeBranchId,
      'InsuranceCompanyId': instance.insuranceCompanyId,
    };
