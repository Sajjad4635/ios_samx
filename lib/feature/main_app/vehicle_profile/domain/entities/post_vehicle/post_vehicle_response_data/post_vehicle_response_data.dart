import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_vehicle_response_data.g.dart';

@JsonSerializable(createToJson: false)
class PostVehicleResponseData extends Equatable {
  final String id;

  const PostVehicleResponseData({required this.id});

  factory PostVehicleResponseData.fromJson(Map<String, dynamic> json) =>
      _$PostVehicleResponseDataFromJson(json);

  @override
  List<Object?> get props => [id];
}
