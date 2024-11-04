part of 'login_otp_bloc.dart';

@freezed 
class LoginOtpEvent with _$LoginOtpEvent {
  const factory LoginOtpEvent.loginEventCalled(LoginOtpParams param) = _LoginEventCalled;
}