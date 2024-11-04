part of 'delete_vehicle_bloc.dart';

@freezed
class DeleteVehicleState with _$DeleteVehicleState {
  const factory DeleteVehicleState.initial() = _DeleteVehicleStateInitial ;
  const factory DeleteVehicleState.loadFailure(Failure failure ) = _DeleteVehicleStateLoadFailure;
  const factory DeleteVehicleState.loading() = DeleteVehicleStateLoading ;
  const factory DeleteVehicleState.loadSuccess (DeleteVehicleEntities deleteVehicleEntities) = _VehicleStateLoadSuccess ;
}