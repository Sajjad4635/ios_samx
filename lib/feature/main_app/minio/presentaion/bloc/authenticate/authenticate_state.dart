part of 'authenticate_bloc.dart';
@freezed
class AuthenticateBlocState with _$AuthenticateBlocState{
  const factory AuthenticateBlocState.initial() = _AuthenticateBlocInitial;
  const factory AuthenticateBlocState.loadFailure(Failure failure) =_AuthenticateBlocLoadFailure;
  const factory AuthenticateBlocState.loading() = AuthenticateBlocStateLoading;
  const factory AuthenticateBlocState.loadSuccess(AuthenticateEntities authenticateEntities) = _AuthenticateBlocLoadSuccess;

}
