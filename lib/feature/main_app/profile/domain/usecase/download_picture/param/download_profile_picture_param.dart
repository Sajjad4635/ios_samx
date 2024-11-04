import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'download_profile_picture_param.g.dart';

@JsonSerializable(createFactory: false)
class DownloadProfilePictureParam extends Equatable{

  final String nationalCode ;

  const DownloadProfilePictureParam({required this.nationalCode});

  Map<String, dynamic> toJson() => _$DownloadProfilePictureParamToJson(this);

  @override
  List<Object?> get props =>  [nationalCode];

}