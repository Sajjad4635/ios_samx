// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyRecords _$FamilyRecordsFromJson(Map<String, dynamic> json) =>
    FamilyRecords(
      personName: json['PersonName'] as String?,
      id: json['Id'] as String?,
      envelopeIndex: (json['EnvelopeIndex'] as num?)?.toInt(),
      groupName: json['GroupName'] as String?,
      costStringDescription: json['CostStringDescription'] as String?,
      errorTypeDesc: json['ErrorTypeDesc'] as String?,
      centerName: json['CenterName'] as String?,
      costDate: json['CostDate'] as String?,
      coverageName: json['CoverageName'] as String?,
      invoiceDate: json['InvoiceDate'] as String?,
      givenAmount: (json['GivenAmount'] as num?)?.toInt(),
      payableAmount: (json['PayableAmount'] as num?)?.toInt(),
      costDescription: json['CostDescription'] as String?,
      costDescriptionTitle: json['CostDescriptionTitle'] as String?,
      nationalCode: json['NationalCode'] as String?,
      dateInserted: json['DateInserted'] as String?,
      chequeDate: json['ChequeDate'] as String?,
    );
