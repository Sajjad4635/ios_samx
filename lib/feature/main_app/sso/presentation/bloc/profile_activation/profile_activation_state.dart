part of 'profile_activation_bloc.dart';

@freezed
class GetProfileActivationState  with _$GetProfileActivationState{
  const factory GetProfileActivationState.initial() = _GetProfileActivationStateInitial;
  const factory GetProfileActivationState.loadFailure(Failure failure) = _GetProfileActivationStateLoadFailure;
  const factory GetProfileActivationState.loading() = GetProfileActivationStateLoading;
  const factory GetProfileActivationState.loadSuccess(GetProfileActivationEntities getProfileActivationEntities) =
  _GetProfileActivationStateLoadSuccess;

}
