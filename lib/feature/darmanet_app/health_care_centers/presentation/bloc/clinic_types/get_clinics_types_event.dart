part of 'get_clinics_types_bloc.dart';

@freezed
class GetClinicsTypesEvent with _$GetClinicsTypesEvent {
  const factory GetClinicsTypesEvent.getClinicsTypesCalled({required GetClinicsTypesParams params}) = _GetClinicsTypesEventCalled;
}
