part of 'other_vehicle_inspection_bloc.dart';

@freezed
abstract class OtherVehicleInspectionEvent with _$OtherVehicleInspectionEvent{
  const factory OtherVehicleInspectionEvent.otherVehicleInspectionEventCalled({required OtherVehicleInspectionParam otherVehicleInspectionParam}) = _OtherVehicleInspectionEventCalled ;
}