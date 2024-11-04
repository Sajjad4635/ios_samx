// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agents_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAgentsListResponseData _$GetAgentsListResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetAgentsListResponseData(
      (json['currentPage'] as num).toInt(),
      (json['pageSize'] as num).toInt(),
      (json['totalPages'] as num).toInt(),
      (json['totalCount'] as num).toInt(),
      (json['items'] as List<dynamic>)
          .map((e) => AgentItemInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
