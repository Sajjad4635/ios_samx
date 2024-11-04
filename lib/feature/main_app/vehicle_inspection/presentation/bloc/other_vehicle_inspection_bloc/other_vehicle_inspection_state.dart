part of 'other_vehicle_inspection_bloc.dart';

@freezed
class OtherVehicleInspectionState with _$OtherVehicleInspectionState {
  const factory OtherVehicleInspectionState.initial() = _OtherVehicleInspectionStateInitial ;
  const factory OtherVehicleInspectionState.loadFailure(Failure failure ) = _OtherVehicleInspectionStateLoadFailure;
  const factory OtherVehicleInspectionState.loading() = OtherVehicleInspectionStateLoading ;
  const factory OtherVehicleInspectionState.loadSuccess () = _OtherVehicleInspectionStateLoadSuccess ;
}
