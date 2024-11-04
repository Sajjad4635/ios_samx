part of 'sign_up_bloc.dart';

@freezed 
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _SignUpStateInitial;
  const factory SignUpState.loadFailure(Failure failure) = _SignUpStateLoadFailure;
  const factory SignUpState.loading() = SignUpStateLoading;
  const factory SignUpState.loadSuccess(SignUpEntities signUpEntities) =
      _SignUpStateLoadSuccess;
}