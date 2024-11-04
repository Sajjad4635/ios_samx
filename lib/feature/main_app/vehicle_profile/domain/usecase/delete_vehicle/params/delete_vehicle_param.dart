import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_vehicle_param.g.dart';

@JsonSerializable(createFactory: false)
class DeleteVehicleParam extends Equatable {
  final String vehicleId;

  const DeleteVehicleParam({required this.vehicleId});

  Map<String, dynamic> toJson() => _$DeleteVehicleParamToJson(this);

  @override
  List<Object?> get props => [vehicleId];
}
