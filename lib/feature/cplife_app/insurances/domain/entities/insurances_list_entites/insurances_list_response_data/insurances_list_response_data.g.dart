// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurances_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsurancesListResponseData _$InsurancesListResponseDataFromJson(
        Map<String, dynamic> json) =>
    InsurancesListResponseData(
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => InsurancesListResponseDataItems.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
