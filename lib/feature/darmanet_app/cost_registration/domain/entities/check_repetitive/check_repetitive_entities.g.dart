// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_repetitive_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckRepetitiveEntities _$CheckRepetitiveEntitiesFromJson(
        Map<String, dynamic> json) =>
    CheckRepetitiveEntities(
      succeed: json['succeed'] as bool,
      message: json['message'] as String,
      iswarning: json['iswarning'] as bool,
    );

Map<String, dynamic> _$CheckRepetitiveEntitiesToJson(
        CheckRepetitiveEntities instance) =>
    <String, dynamic>{
      'succeed': instance.succeed,
      'message': instance.message,
      'iswarning': instance.iswarning,
    };
