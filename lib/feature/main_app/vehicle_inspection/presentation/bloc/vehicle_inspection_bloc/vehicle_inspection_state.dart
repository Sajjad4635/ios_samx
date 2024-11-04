part of 'vehicle_inspection_bloc.dart';

@freezed
class VehicleInspectionState with _$VehicleInspectionState {
  const factory VehicleInspectionState.initial() = _VehicleInspectionStateInitial ;
  const factory VehicleInspectionState.loadFailure(Failure failure ) = _VehicleInspectionStateLoadFailure;
  const factory VehicleInspectionState.loading() = VehicleInspectionStateLoading ;
  const factory VehicleInspectionState.loadSuccess (VehicleInspectionEntities vehicleInspectionEntities) = _VehicleInspectionStateLoadSuccess ;
}
