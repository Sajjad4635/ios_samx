import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'download_profile_picture_entities.g.dart' ;


@JsonSerializable(createToJson: false)
class DownloadProfilePictureEntity extends Equatable{
  final DioResponseSamX dioResponseSamX ;

  const DownloadProfilePictureEntity({required this.dioResponseSamX});

  factory DownloadProfilePictureEntity.fromJson(Map<String, dynamic> json) => _$DownloadProfilePictureEntityFromJson(json);

  @override
  List<Object?> get props => [dioResponseSamX];

}