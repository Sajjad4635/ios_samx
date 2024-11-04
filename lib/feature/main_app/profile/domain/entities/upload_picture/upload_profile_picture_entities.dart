import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_profile_picture_entities.g.dart';

@JsonSerializable(createToJson: false)
class UploadProfilePictureEntity extends Equatable{

  final DioResponseSamX dioResponseSamX ;

  const UploadProfilePictureEntity({required this.dioResponseSamX});

  factory UploadProfilePictureEntity.fromJson(Map<String, dynamic> json) => _$UploadProfilePictureEntityFromJson(json);

  @override
  List<Object?> get props =>  [dioResponseSamX];

}