part of 'get_clinics_types_bloc.dart';

@freezed
class GetClinicsTypesState with _$GetClinicsTypesState {
  //const factory GetClinicsTypesState.initial() = _Initial;
  const factory GetClinicsTypesState.initial() = _GetClinicTypesStateInitial ;
  const factory GetClinicsTypesState.loadFailure(Failure failure) = _GetClinicsTypeLoadFailure ;
  const factory GetClinicsTypesState.loading()= GetClinicsTypesStateLoading ;
  const factory GetClinicsTypesState.loadSuccess(GetClinicsTypesEntity getClinicsTypesEntity) = _GetClinicsTypesStateLoadSuccess ;

}
