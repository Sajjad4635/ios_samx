part of 'create_user_bloc.dart';

@freezed 
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _CreateUserStateInitial;
  const factory CreateUserState.loading() = CreateUserStateLoading;
  const factory CreateUserState.loadSuccess(CreateUserEntities createUserEntities) =_CreateUserStateLoadSuccess;
  const factory CreateUserState.loadFailure(Failure failure) = _CreateUserStateLoadFailure;
}