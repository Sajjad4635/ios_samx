// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_process_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProcessResponseData _$GetProcessResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetProcessResponseData(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      parentId: json['parentId'],
      parentTitle: json['parentTitle'],
      orderNo: (json['orderNo'] as num?)?.toInt(),
      required: json['required'],
    );
