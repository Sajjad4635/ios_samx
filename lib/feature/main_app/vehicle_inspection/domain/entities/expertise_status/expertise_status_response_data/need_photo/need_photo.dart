
import 'package:freezed_annotation/freezed_annotation.dart';

part 'need_photo.g.dart';

@JsonSerializable(createToJson: false)
class NeedPhoto {
  final int? id;
  final String? typeName;
  final int? processTypeId;
  final String? processTypeName;
  final bool? optionalPolicyholder;
  final int? limitTime;
  final int? orderNo;
  final int? type;
  final String? name;
  final String? helpText;
  final String? helpVoicePath;
  final dynamic hintPhotoPath;
  final dynamic fileId;
  final dynamic bucketName;
  final dynamic minIoFileName;

  NeedPhoto({
    this.id,
    this.typeName,
    this.processTypeId,
    this.processTypeName,
    this.optionalPolicyholder,
    this.limitTime,
    this.orderNo,
    this.type,
    this.name,
    this.helpText,
    this.helpVoicePath,
    this.hintPhotoPath,
    this.fileId,
    this.bucketName,
    this.minIoFileName,
  });

  factory NeedPhoto.fromJson(Map<String, dynamic> json) =>
      _$NeedPhotoFromJson(json);

  List<Object?> get props => [
    id,
    typeName,
    processTypeId,
    processTypeName,
    optionalPolicyholder,
    limitTime,
    orderNo,
    type,
    name,
    helpText,
    helpVoicePath,
    hintPhotoPath,
    fileId,
    bucketName,
    minIoFileName,
  ];
}