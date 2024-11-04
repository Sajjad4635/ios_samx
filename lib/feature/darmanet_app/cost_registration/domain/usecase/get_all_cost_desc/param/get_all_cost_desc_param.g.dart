// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_cost_desc_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCostDescParam _$GetAllCostDescParamFromJson(Map<String, dynamic> json) =>
    GetAllCostDescParam(
      searchType: (json['SearchType'] as num).toInt(),
      limit: (json['Limit'] as num).toInt(),
      offset: (json['Offset'] as num).toInt(),
    );

Map<String, dynamic> _$GetAllCostDescParamToJson(
        GetAllCostDescParam instance) =>
    <String, dynamic>{
      'SearchType': instance.searchType,
      'Limit': instance.limit,
      'Offset': instance.offset,
    };
