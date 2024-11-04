// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_envelope_send_info_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEnvelopeSendInfoEntities _$GetEnvelopeSendInfoEntitiesFromJson(
        Map<String, dynamic> json) =>
    GetEnvelopeSendInfoEntities(
      envelopeNumber: json['EnvelopeNumber'] as String,
      envelopeDate: json['EnvelopeDate'] as String,
      customerCompanyName: json['CustomerCompanyName'] as String,
      customerCompanyPhone: json['CustomerCompanyPhone'] as String,
      costItemCount: (json['CostItemCount'] as num).toInt(),
      totalGivenAmount: (json['TotalGivenAmount'] as num).toInt(),
      mainPersonFullName: json['MainPersonFullName'] as String,
      branchName: json['BranchName'] as String,
      branchPostalCode: json['BranchPostalCode'] as String,
      branchAddress: json['BranchAddress'] as String,
      branchPhone: json['BranchPhone'] as String,
      gender: (json['Gender'] as num).toInt(),
      insuranceCompanyName: json['InsuranceCompanyName'] as String,
      insuranceNumber: json['InsuranceNumber'] as String,
      isClinical: json['IsClinical'] as bool,
      phoneNumber: json['PhoneNumber'] as String?,
      envelopeIndex: (json['EnvelopeIndex'] as num).toInt(),
      id: json['Id'] as String?,
    );
