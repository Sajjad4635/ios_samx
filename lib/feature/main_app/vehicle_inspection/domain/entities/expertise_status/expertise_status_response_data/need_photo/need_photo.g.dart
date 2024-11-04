// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NeedPhoto _$NeedPhotoFromJson(Map<String, dynamic> json) => NeedPhoto(
      id: (json['id'] as num?)?.toInt(),
      typeName: json['typeName'] as String?,
      processTypeId: (json['processTypeId'] as num?)?.toInt(),
      processTypeName: json['processTypeName'] as String?,
      optionalPolicyholder: json['optionalPolicyholder'] as bool?,
      limitTime: (json['limitTime'] as num?)?.toInt(),
      orderNo: (json['orderNo'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      name: json['name'] as String?,
      helpText: json['helpText'] as String?,
      helpVoicePath: json['helpVoicePath'] as String?,
      hintPhotoPath: json['hintPhotoPath'],
      fileId: json['fileId'],
      bucketName: json['bucketName'],
      minIoFileName: json['minIoFileName'],
    );
