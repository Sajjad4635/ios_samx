part of 'vehicle_dept_bloc.dart';

@freezed
class VehicleDeptState with _$VehicleDeptState {
  const factory VehicleDeptState.initial() = _VehicleDeptStateInitial ;
  const factory VehicleDeptState.loadFailure(Failure failure ) = _VehicleDeptStateLoadFailure;
  const factory VehicleDeptState.loading() = VehicleDeptStateLoading ;
  const factory VehicleDeptState.loadSuccess (VehicleDeptEntities vehicleDeptEntities) = _VehicleDeptStateLoadSuccess ;
}