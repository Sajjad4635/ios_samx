part of 'edit_vehicle_bloc.dart';

@freezed
class EditVehicleState with _$EditVehicleState {
  const factory EditVehicleState.initial() = _EditVehicleStateInitial ;
  const factory EditVehicleState.loadFailure(Failure failure ) = _EditVehicleStateLoadFailure;
  const factory EditVehicleState.loading() = EditVehicleStateLoading ;
  const factory EditVehicleState.loadSuccess (EditVehicleEntities editVehicleEntities) = _EditVehicleStateLoadSuccess ;
}