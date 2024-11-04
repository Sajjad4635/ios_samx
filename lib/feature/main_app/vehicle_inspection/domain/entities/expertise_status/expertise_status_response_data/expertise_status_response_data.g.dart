// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expertise_status_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpertiseStatusResponseData _$ExpertiseStatusResponseDataFromJson(
        Map<String, dynamic> json) =>
    ExpertiseStatusResponseData(
      showHeader: json['showHeader'] as bool?,
      isComplete: json['isComplete'] as bool?,
      state: json['state'] as String?,
      stateId: json['stateId'] as String?,
      createdDatetime: json['createdDatetime'] == null
          ? null
          : DateTime.parse(json['createdDatetime'] as String),
      phonenumber: (json['phonenumber'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      plateType: (json['plateType'] as num?)?.toInt(),
      plateProvinceCode: json['plateProvinceCode'] as String?,
      plateAlphabetPart: (json['plateAlphabetPart'] as num?)?.toInt(),
      plateFirstDigit: json['plateFirstDigit'] as String?,
      plateNumberPart: json['plateNumberPart'] as String?,
      plateSerial: json['plateSerial'],
      plateNumber: json['plateNumber'],
      increasePhotoTime: json['increasePhotoTime'] as bool?,
      needPhotos: (json['needPhotos'] as List<dynamic>?)
          ?.map((e) => NeedPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
    );
