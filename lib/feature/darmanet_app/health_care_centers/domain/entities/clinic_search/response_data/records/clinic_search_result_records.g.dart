// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_search_result_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicSearchResultRecord _$ClinicSearchResultRecordFromJson(
        Map<String, dynamic> json) =>
    ClinicSearchResultRecord(
      name: json['Name'] as String,
      clinicTypeName: json['ClinicTypeName'] as String,
      code: (json['Code'] as num).toDouble(),
      provinceName: json['ProvinceName'] as String?,
      cityName: json['CityName'] as String,
      phone: json['Phone'] as String,
      address: json['Address'] as String,
      nameWithCity: json['NameWithCity'] as String,
      id: json['Id'] as String,
      clinicIssueType: (json['ClinicIssueType'] as num).toInt(),
      clinicFinancialType: (json['ClinicFinancialType'] as num).toInt(),
      fax: json['Fax'] as String,
    );
