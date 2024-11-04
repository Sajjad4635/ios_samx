part of 'sign_up_otp_bloc.dart';

@freezed 
class SignUpOtpState with _$SignUpOtpState {
  const factory SignUpOtpState.initial() = _SignUpOtpStateInitial;
  const factory SignUpOtpState.loadFailure(Failure failure) = _SignUpOtpStateLoadFailure;
  const factory SignUpOtpState.loading() = SignUpOtpStateLoading;
  const factory SignUpOtpState.loadSuccess(SignUpOtpEntities signUpOtpEntities) =
      _SignUpOtpStateLoadSuccess;
}