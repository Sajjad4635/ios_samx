// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_list_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileListEntities _$FileListEntitiesFromJson(Map<String, dynamic> json) =>
    FileListEntities(
      total: (json['Total'] as num).toInt(),
      records: (json['Records'] as List<dynamic>)
          .map((e) => Records.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['Errors'] as String?,
      sumResults: json['SumResults'] as List<dynamic>,
      succeed: json['succeed'] as bool,
    );

Records _$RecordsFromJson(Map<String, dynamic> json) => Records(
      imageUrl: json['ImageUrl'] as String,
      id: json['Id'] as String,
      newName: json['NewName'] as String,
    );

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
      'ImageUrl': instance.imageUrl,
      'Id': instance.id,
      'NewName': instance.newName,
    };
