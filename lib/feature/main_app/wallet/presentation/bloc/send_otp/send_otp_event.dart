part of 'send_otp_bloc.dart';

@freezed
class SendOtpEvent with _$SendOtpEvent {
  const factory SendOtpEvent.sendOtpEventCalled(SendOtpParams params) = _SendOtpEventCalled;
}
