// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_person_cost_image_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadPersonCostImageEntities _$UploadPersonCostImageEntitiesFromJson(
        Map<String, dynamic> json) =>
    UploadPersonCostImageEntities(
      succeed: json['succeed'] as bool,
      error: json['error'] as String?,
      parameter: Parameter.fromJson(json['parameter'] as Map<String, dynamic>),
    );

Parameter _$ParameterFromJson(Map<String, dynamic> json) => Parameter(
      count: (json['Count'] as num).toInt(),
      costId: json['CostId'] as String,
    );

Map<String, dynamic> _$ParameterToJson(Parameter instance) => <String, dynamic>{
      'Count': instance.count,
      'CostId': instance.costId,
    };
