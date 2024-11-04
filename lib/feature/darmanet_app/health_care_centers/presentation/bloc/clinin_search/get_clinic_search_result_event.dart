part of 'get_clinic_search_result_bloc.dart';

@freezed
class GetClinicSearchResultEvent with _$GetClinicSearchResultEvent {
  const factory GetClinicSearchResultEvent.getClinicSearchCalled({required GetClinicSearchResultParams params}) = _GetClinicSearchResulutCalled;
}
