part of 'vehicle_bloc.dart' ;

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState.initial() = _VehicleStateInitial ;
  const factory VehicleState.loadFailure(Failure failure ) = _VehicleStateLoadFailure;
  const factory VehicleState.loading() = VehicleStateLoading ;
  const factory VehicleState.loadSuccess (VehicleEntities vehicleEntities ) = _VehicleStateLoadSuccess ;
}



