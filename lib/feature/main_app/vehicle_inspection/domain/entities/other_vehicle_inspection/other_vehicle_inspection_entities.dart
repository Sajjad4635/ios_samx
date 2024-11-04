import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'other_vehicle_inspection_entities.g.dart';

@JsonSerializable()
class OtherVehicleInspectionEntities extends Equatable {

  final int code  ;
  const OtherVehicleInspectionEntities(this.code);

  factory OtherVehicleInspectionEntities.fromJson(Map<String, dynamic> json) => _$OtherVehicleInspectionEntitiesFromJson(json);

  @override
  List<Object?> get props => [code];
}
