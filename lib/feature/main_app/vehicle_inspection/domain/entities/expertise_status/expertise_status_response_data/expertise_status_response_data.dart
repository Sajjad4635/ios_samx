import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/expertise_status/expertise_status_response_data/setting/setting.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'need_photo/need_photo.dart';

part 'expertise_status_response_data.g.dart';

@JsonSerializable(createToJson: false)
class ExpertiseStatusResponseData extends Equatable {
  final bool? showHeader;
  final bool? isComplete;
  final String? state;
  final String? stateId;
  final DateTime? createdDatetime;
  final int? phonenumber;
  final String? fullname;
  final int? plateType;
  final String? plateProvinceCode;
  final int? plateAlphabetPart;
  final String? plateFirstDigit;
  final String? plateNumberPart;
  final dynamic plateSerial;
  final dynamic plateNumber;
  final bool? increasePhotoTime;
  final List<NeedPhoto>? needPhotos;
  final Setting? setting;

  const ExpertiseStatusResponseData({
    this.showHeader,
    this.isComplete,
    this.state,
    this.stateId,
    this.createdDatetime,
    this.phonenumber,
    this.fullname,
    this.plateType,
    this.plateProvinceCode,
    this.plateAlphabetPart,
    this.plateFirstDigit,
    this.plateNumberPart,
    this.plateSerial,
    this.plateNumber,
    this.increasePhotoTime,
    this.needPhotos,
    this.setting,
  });

  factory ExpertiseStatusResponseData.fromJson(Map<String, dynamic> json) =>
      _$ExpertiseStatusResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        showHeader,
        isComplete,
        state,
        stateId,
        createdDatetime,
        phonenumber,
        fullname,
        plateType,
        plateProvinceCode,
        plateAlphabetPart,
        plateFirstDigit,
        plateNumberPart,
        plateSerial,
        plateNumber,
        increasePhotoTime,
        needPhotos,
        setting,
      ];
}




