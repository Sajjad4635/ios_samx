import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle/vehicle_response_data/plaque/plaque.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle/vehicle_response_data/vehicle/vehicle.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_response_data.g.dart';

@JsonSerializable(createToJson: false)
class VehicleResponseData extends Equatable {

  final String id;
  final String title;
  final bool isOwner;
  final Plaque plaque;
  final Vehicle vehicle;

  const VehicleResponseData({
    required this.id,
    required this.title,
    required this.isOwner,
    required this.plaque,
    required this.vehicle,
  });

  factory VehicleResponseData.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseDataFromJson(json);

  @override
  List<Object?> get props => [id, title, isOwner, vehicle, plaque];
}
