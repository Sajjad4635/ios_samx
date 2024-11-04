// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_by_id_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetByIdEntities _$GetByIdEntitiesFromJson(Map<String, dynamic> json) =>
    GetByIdEntities(
      type: (json['Type'] as num).toInt(),
      parentId: json['ParentId'] as String?,
      parentType: (json['ParentType'] as num).toInt(),
      value: json['Value'] as String?,
      code: (json['Code'] as num).toInt(),
      description: json['Description'] as String?,
      typeDesc: json['TypeDesc'] as String?,
      dateInserted: json['DateInserted'] as String?,
      creatorId: json['CreatorId'] as String?,
      dateModified: json['DateModified'] as String?,
      updaterId: json['UpdaterId'] as String?,
      isDeleted: json['IsDeleted'] as bool,
      deleteUserID: json['DeleteUserID'] as String?,
      id: json['Id'] as String?,
    );
