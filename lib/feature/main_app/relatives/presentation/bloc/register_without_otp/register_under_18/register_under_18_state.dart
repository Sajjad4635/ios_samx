

part of 'register_under_18_bloc.dart';



@freezed
class RegisterUnder18State with _$RegisterUnder18State {
  const factory RegisterUnder18State.initial() = _RegisterUnder18StateInitial ;
  const factory RegisterUnder18State.loadFailure(Failure failure ) = _RegisterUnder18StateLoadFailure;
  const factory RegisterUnder18State.loading() = RegisterUnder18StateLoading ;
  const factory RegisterUnder18State.loadSuccess (RegisterWithoutOtpEntities registerWithoutOtpEntities ) = _RegisterUnder18StateLoadSuccess ;
}

