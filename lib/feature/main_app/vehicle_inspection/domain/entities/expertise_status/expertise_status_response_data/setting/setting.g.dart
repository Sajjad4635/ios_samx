// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) => Setting(
      dmt: json['dmt'] as bool?,
      aae: json['aae'] as bool?,
      alprsa: json['alprsa'] as bool?,
      mlprais: json['mlprais'] as bool?,
      mbl: (json['mbl'] as num?)?.toInt(),
      linkVideo: json['linkVideo'] as String?,
      linkPdf: json['linkPdf'] as String?,
      increasePhotoTime: (json['increasePhotoTime'] as num?)?.toInt(),
      linkPoster: json['linkPoster'] as String?,
      photoResolutionHeight: (json['photoResolutionHeight'] as num?)?.toInt(),
      photoResolutionWidth: (json['photoResolutionWidth'] as num?)?.toInt(),
      videoResolutionHeight: (json['videoResolutionHeight'] as num?)?.toInt(),
      videoResolutionWidth: (json['videoResolutionWidth'] as num?)?.toInt(),
      maxVideoTime: (json['maxVideoTime'] as num?)?.toInt(),
      videoShotTime: (json['videoShotTime'] as num?)?.toInt(),
      ereaanh: (json['ereaanh'] as num?)?.toInt(),
    );
