

part of 'register_upper_18_bloc.dart';



@freezed
class RegisterUpper18State with _$RegisterUpper18State {
  const factory RegisterUpper18State.initial() = _RegisterUpper18StateInitial ;
  const factory RegisterUpper18State.loadFailure(Failure failure ) = _RegisterUpper18StateLoadFailure;
  const factory RegisterUpper18State.loading() = RegisterUpper18StateLoading ;
  const factory RegisterUpper18State.loadSuccess (RegisterWithoutOtpEntities registerWithoutOtpEntities ) = _RegisterUpper18StateLoadSuccess ;
}

