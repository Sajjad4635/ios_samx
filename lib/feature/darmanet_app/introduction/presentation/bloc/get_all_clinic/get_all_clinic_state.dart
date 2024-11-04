part of 'get_all_clinic_bloc.dart';

@freezed
class GetAllClinicState with _$GetAllClinicState {
  const factory GetAllClinicState.initial() = _GetAllClinicStateInitial;
  const factory GetAllClinicState.loadFailure(Failure failure) = _GetAllClinicStateLoadFailure;
  const factory GetAllClinicState.loading() = GetAllClinicStateLoading;
  const factory GetAllClinicState.loadSuccess(GetAllClinicEntities getAllClinicEntities) =
      _GetAllClinicStateLoadSuccess;
}