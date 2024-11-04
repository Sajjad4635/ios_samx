part of 'edit_vehicle_bloc.dart';

@freezed
class EditVehicleEvent with _$EditVehicleEvent {
  const factory EditVehicleEvent.editVehicleEventCalled({required EditVehicleParam editVehicleParam}) = _EditVehicleEventCalled;

}