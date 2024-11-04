// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plaque.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Plaque _$PlaqueFromJson(Map<String, dynamic> json) => Plaque(
      region: (json['region'] as num).toInt(),
      letter: json['letter'] as String,
      segment1: (json['segment1'] as num).toInt(),
      segment2: (json['segment2'] as num).toInt(),
      letterNumber: (json['letterNumber'] as num).toInt(),
    );

Map<String, dynamic> _$PlaqueToJson(Plaque instance) => <String, dynamic>{
      'region': instance.region,
      'letter': instance.letter,
      'segment1': instance.segment1,
      'segment2': instance.segment2,
      'letterNumber': instance.letterNumber,
    };
