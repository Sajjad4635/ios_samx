part of 'get_profile_bloc.dart';

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.initial() = _GetProfileStateInitial;
  const factory GetProfileState.loadFailure(Failure failure) =_GetProfileStateLoadFailure;
  const factory GetProfileState.loading() = GetUserProfileStateLoading;
  const factory GetProfileState.loadSuccess(GetProfileEntities getProfileEntities) = _GetProfileStateLoadSuccess;
}
