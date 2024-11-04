part of 'create_user_bloc.dart';

@freezed 
class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.createUserEventCalled(CreateUserParam param) = _CreateUserEventCalled;
}