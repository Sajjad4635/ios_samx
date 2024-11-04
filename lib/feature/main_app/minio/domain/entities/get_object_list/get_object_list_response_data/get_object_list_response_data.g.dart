// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetObjectListResponseData _$GetObjectListResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetObjectListResponseData(
      key: json['key'] as String?,
      lastModified: json['lastModified'] as String?,
      eTag: json['eTag'] as String?,
      size: (json['size'] as num?)?.toInt(),
      isDir: json['isDir'] as bool?,
      versionId: json['versionId'],
      isLatest: json['isLatest'] as bool?,
      lastModifiedDateTime: json['lastModifiedDateTime'] as String?,
    );
