import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_vehicle_param.g.dart';

@JsonSerializable(createFactory: false)
class EditVehicleParam extends Equatable {
  final String vehicleId;
  final String title;

  const EditVehicleParam({required this.vehicleId , required this.title});

  Map<String, dynamic> toJson() => _$EditVehicleParamToJson(this);

  @override
  List<Object?> get props => [vehicleId];
}
