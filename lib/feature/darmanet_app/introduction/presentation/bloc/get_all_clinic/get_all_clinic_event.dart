part of 'get_all_clinic_bloc.dart';

@freezed
abstract class GetAllClinicEvent with _$GetAllClinicEvent {
  const factory GetAllClinicEvent.getAllClinicEventCalled({required GetAllClinicParam param}) =
      _GetAllClinicEventCalled;
}