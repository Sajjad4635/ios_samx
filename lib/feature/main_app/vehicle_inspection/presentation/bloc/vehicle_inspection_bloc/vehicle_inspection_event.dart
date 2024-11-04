part of 'vehicle_inspection_bloc.dart';

@freezed
abstract class VehicleInspectionEvent with _$VehicleInspectionEvent {
  const factory VehicleInspectionEvent.vehicleInspectionEventCalled({required VehicleInspectionParam vehicleInspectionParam}) = _VehicleInspectionEventCalled ;
}
