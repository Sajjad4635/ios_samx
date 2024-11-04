// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_clinic_search_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetClinicSearchResultEntity _$GetClinicSearchResultEntityFromJson(
        Map<String, dynamic> json) =>
    GetClinicSearchResultEntity(
      total: (json['Total'] as num).toInt(),
      records: (json['Records'] as List<dynamic>)
          .map((e) =>
              ClinicSearchResultRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['Errors'] as String?,
      sumResults: json['SumResults'] as List<dynamic>?,
      succeed: json['succeed'] as bool,
    );
