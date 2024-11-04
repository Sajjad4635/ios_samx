part of 'get_staff_bloc.dart';

@freezed
class GetStaffState with _$GetStaffState{
  const factory GetStaffState.initial() = _GetStaffStateInitial;
  const factory GetStaffState.loadFailure(Failure failure) = _GetStaffStateLoadFailure;
  const factory GetStaffState.loading() = GetStaffStateLoading;
  const factory GetStaffState.loadSuccess(GetStaffEntities getStaffEntities) = _GetStaffStateLoadSuccess;
}