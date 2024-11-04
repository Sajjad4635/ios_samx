part of 'vehicle_dept_bloc.dart';


@freezed
class VehicleDeptEvent with _$VehicleDeptEvent {
  const factory VehicleDeptEvent.vehicleDeptEventCalled({required VehicleDeptParam vehicleDeptParam}) = _EditVehicleEventCalled;
}