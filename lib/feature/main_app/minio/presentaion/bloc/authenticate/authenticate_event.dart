part of 'authenticate_bloc.dart';

@freezed
abstract class AuthenticateBlocEvent with _$AuthenticateBlocEvent {
  const factory AuthenticateBlocEvent.authBlocEventCalled(AuthenticateParam authenticateParam) = _AuthBlocEventCalled ;
}
