part of 'login_otp_bloc.dart';

@freezed 
class LoginOtpState with _$LoginOtpState {
  const factory LoginOtpState.initial() = _LoginOtpStateInitial;
  const factory LoginOtpState.loadFailure(Failure failure) = _LoginOtpStateLoadFailure;
  const factory LoginOtpState.loading() = LoginOtpStateLoading;
  const factory LoginOtpState.loadSuccess(LoginOtpEntities loginOtpEntities) =
      _LoginOtpStateLoadSuccess;
}