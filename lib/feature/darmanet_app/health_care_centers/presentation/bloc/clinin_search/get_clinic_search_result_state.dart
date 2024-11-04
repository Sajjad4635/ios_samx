part of 'get_clinic_search_result_bloc.dart';

@freezed
class GetClinicSearchResultState with _$GetClinicSearchResultState {
  //const factory GetClinicSearchResultState.initial() = _Initial;
  //const factory GetClinicsTypesState.initial() = _Initial;
  const factory GetClinicSearchResultState.initial() = _GetClinicSearchResultStateInitial ;
  const factory GetClinicSearchResultState.loadFailure(Failure failure) = _GetClinicSearchResultLoadFailure ;
  const factory GetClinicSearchResultState.loading()= GetClinicSearchResultStateLoading ;
  const factory GetClinicSearchResultState.loadSuccess(GetClinicSearchResultEntity getClinicSearchResultEntity) = _GetClinicSearchResultStateLoadSuccess ;
}
