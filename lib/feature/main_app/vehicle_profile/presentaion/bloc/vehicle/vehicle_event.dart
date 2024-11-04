part of 'vehicle_bloc.dart';

@freezed
abstract class VehicleEvent with _$VehicleEvent {
  const factory VehicleEvent.vehicleEventCalled({required NoParams noParams}) =
      _VehicleEventCalled;
}
