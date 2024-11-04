part of 'send_otp_bloc.dart';

@freezed
class SendOtpState with _$SendOtpState {
  const factory SendOtpState.initial() = _SendOtpStateInitial ;
  const factory SendOtpState.loading() =  SendOtpStateLoading ;
  const factory SendOtpState.loadSuccess(SendOtpResponseEntities entities) = _SendOtpStateLoadSuccess ;
  const factory SendOtpState.loadFailure(Failure failure) = _SendOtpStateLoadFailure ;
}
