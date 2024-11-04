part of 'post_vehicle_bloc.dart';


@freezed
abstract class PostVehicleEvent with _$PostVehicleEvent{
  const factory PostVehicleEvent.postVehicleEventCalled({required PostVehicleParam postVehicleParam}) = _PostVehicleEventCalled ;
}