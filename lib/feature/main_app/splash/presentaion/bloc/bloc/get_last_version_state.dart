part of 'get_last_version_bloc.dart';

@freezed
class GetLastVersionState with _$GetLastVersionState {
   const factory GetLastVersionState.initial() = _GetLastVersionStateInitial;
  const factory GetLastVersionState.loadFailure(Failure failure) =_GetLastVersionStateLoadFailure;
  const factory GetLastVersionState.loading() = GetLastVersionStateLoading;
  const factory GetLastVersionState.loadSuccess(LastVersionResponseEntity getProfileEntities) = _LastVersionResponseEntityLoadSuccess;
}
