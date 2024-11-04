// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_response_lenz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DioResponseLenz _$DioResponseLenzFromJson(Map<String, dynamic> json) =>
    DioResponseLenz(
      (json['code'] as num?)?.toInt(),
      json['message'] as String,
      json['data'],
      (json['totalRecord'] as num).toInt(),
      (json['type'] as num).toInt(),
    );
