part of 'sign_up_otp_bloc.dart';

@freezed 
class SignUpOtpEvent with _$SignUpOtpEvent {
  const factory SignUpOtpEvent.signUpOtpEventCalled(SignUpOtpParams param) = _SignUpOtpEventCalled;
}