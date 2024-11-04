import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/plaque_request.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_vehicle_param.g.dart';

@JsonSerializable(createFactory: false)
class PostVehicleParam extends Equatable {
  final PlaqueRequest plaqueRequest;
  final bool isOwner;

  const PostVehicleParam({required this.plaqueRequest, required this.isOwner});

  Map<String, dynamic> toJson() => _$PostVehicleParamToJson(this);

  @override
  List<Object?> get props => [plaqueRequest, isOwner];
}
