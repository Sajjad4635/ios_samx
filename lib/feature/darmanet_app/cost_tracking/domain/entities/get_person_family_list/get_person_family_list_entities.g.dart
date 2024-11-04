// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_person_family_list_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPersonFamilyListEntities _$GetPersonFamilyListEntitiesFromJson(
        Map<String, dynamic> json) =>
    GetPersonFamilyListEntities(
      errors: json['Errors'] as String?,
      familyRecords: (json['Records'] as List<dynamic>)
          .map((e) => FamilyRecords.fromJson(e as Map<String, dynamic>))
          .toList(),
      succeed: json['succeed'] as bool,
      sumResults: json['SumResults'] as List<dynamic>?,
      total: (json['Total'] as num).toInt(),
    );
