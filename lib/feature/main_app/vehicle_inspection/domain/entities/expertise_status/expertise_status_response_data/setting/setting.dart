

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.g.dart';

@JsonSerializable(createToJson: false)
class Setting {
  final bool? dmt;
  final bool? aae;
  final bool? alprsa;
  final bool? mlprais;
  final int? mbl;
  final String? linkVideo;
  final String? linkPdf;
  final int? increasePhotoTime;
  final String? linkPoster;
  final int? photoResolutionHeight;
  final int? photoResolutionWidth;
  final int? videoResolutionHeight;
  final int? videoResolutionWidth;
  final int? maxVideoTime;
  final int? videoShotTime;
  final int? ereaanh;

  Setting({
    this.dmt,
    this.aae,
    this.alprsa,
    this.mlprais,
    this.mbl,
    this.linkVideo,
    this.linkPdf,
    this.increasePhotoTime,
    this.linkPoster,
    this.photoResolutionHeight,
    this.photoResolutionWidth,
    this.videoResolutionHeight,
    this.videoResolutionWidth,
    this.maxVideoTime,
    this.videoShotTime,
    this.ereaanh,
  });

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  List<Object?> get props => [
    dmt,
    aae,
    alprsa,
    mlprais,
    mbl,
    linkVideo,
    linkPdf,
    increasePhotoTime,
    linkPoster,
    photoResolutionHeight,
    photoResolutionWidth,
    videoResolutionHeight,
    videoResolutionWidth,
    maxVideoTime,
    videoShotTime,
    ereaanh,
  ];
}