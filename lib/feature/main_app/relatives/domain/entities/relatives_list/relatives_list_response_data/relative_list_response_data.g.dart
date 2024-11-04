// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relative_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelativeListResponseData _$RelativeListResponseDataFromJson(
        Map<String, dynamic> json) =>
    RelativeListResponseData(
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Relative.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
