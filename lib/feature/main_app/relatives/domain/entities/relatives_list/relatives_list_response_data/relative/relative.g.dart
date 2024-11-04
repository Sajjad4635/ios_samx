// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relative _$RelativeFromJson(Map<String, dynamic> json) => Relative(
      title: json['title'] as String,
      id: json['id'] as String,
      gender: (json['gender'] as num).toInt(),
    );

Map<String, dynamic> _$RelativeToJson(Relative instance) => <String, dynamic>{
      'title': instance.title,
      'gender': instance.gender,
      'id': instance.id,
    };
