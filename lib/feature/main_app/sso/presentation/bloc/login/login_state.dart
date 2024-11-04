part of 'login_bloc.dart';

@freezed 
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;
  const factory LoginState.loadFailure(Failure failure) = _LoginStateLoadFailure;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.loadSuccess(LoginEntities loginEntities) =
      _LoginStateLoadSuccess;
}